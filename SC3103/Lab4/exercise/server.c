#include <netinet/in.h>
#include <signal.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/socket.h>
#include <sys/types.h>
#include <unistd.h>
#include <pthread.h>
#include <semaphore.h>

#define MAX_CONNECTIONS 3

int connections = 0;
//pthread_mutex_t lock;
sem_t sem_mutex; //mutex semaphore

void error(char *m) {
	perror(m);
}

void *handle_socket(void *arg) {
    int newsockfd = *(int *)arg; // Copy the actual socket descriptor
    free(arg); // Free the dynamically allocated memory for the socket
    char buffer[256];
    int n;
    memset(buffer, 0, 256);
    n = read(newsockfd, buffer, 255);
    if (n < 0)
        error("ERROR reading from socket");
    printf("Server: Message received: %s\n", buffer);
    
    int num = 5 * atoi(buffer);
    sleep(5); // Simulate some processing delay
    sprintf(buffer, "%d", num);
    
    n = write(newsockfd, buffer, strlen(buffer));
    if (n < 0)
        error("ERROR writing back to socket");
    
    printf("Server: Sent answer: %d\n", num);
    
    //pthread_mutex_lock(&lock);
    //connections -= 1;
    //pthread_mutex_unlock(&lock);
    close(newsockfd); // Close the socket after handling
    sem_post(&sem_mutex); //Release semaphore after connection is handled

    return NULL; // Return NULL as per convention
}

int main(int argc, char *argv[]) {
    int sockfd, newsockfd, port;
    socklen_t clilen;
    struct sockaddr_in serv_addr, cli_addr;

    if (argc < 2) error("ERROR, no port provided\n");

    port = atoi(argv[1]);
    
//Creating a socket for the server
    sockfd = socket(AF_INET, SOCK_STREAM, 0);
    if (sockfd < 0) error("ERROR opening socket");
    
    memset((char *) &serv_addr, 0, sizeof(serv_addr));

    serv_addr.sin_family = AF_INET;
    serv_addr.sin_addr.s_addr = INADDR_ANY;
    serv_addr.sin_port = htons(port); // Host to network

//Binding socket to fixed server address, client socket do not need to bind since it is dynamically created
    if (bind(sockfd, (struct sockaddr *)&serv_addr, sizeof(serv_addr)) < 0)
        error("ERROR binding to socket");

//Server socket actively listenting for client requested, at most having 3 incoming connections from the client side
    listen(sockfd, 3);
    
    clilen = sizeof(cli_addr);
    //pthread_mutex_init(&lock, NULL); // Initialize the mutex
    sem_init(&sem_mutex,0, MAX_CONNECTIONS); //initialize the sempahore with a initial value of 3
    for (;;) {
    	sem_wait(&sem_mutex);
    	//pthread_mutex_lock(&lock);
        //if (connections >= MAX_CONNECTIONS) {
	//	 pthread_mutex_unlock(&lock);
	//	 printf("Max connections reached. Waiting for a connection to finish...\n");
	//	sleep(1);
	//	 continue; // Skip to the next iteration if max connections reached
        //}
        //pthread_mutex_unlock(&lock);
        newsockfd = accept(sockfd, (struct sockaddr *)&cli_addr, &clilen);
        if (newsockfd < 0) 
            error("ERROR on accept");
        
        // Dynamically allocate memory for the new socket descriptor
        int *newsockfd_ptr = malloc(sizeof(int));
        *newsockfd_ptr = newsockfd;
        
        //pthread_mutex_lock(&lock);v
        //connections += 1; // Increment connections count
        //pthread_mutex_unlock(&lock);
        
        pthread_t t;
        int tret = pthread_create(&t, NULL, handle_socket, (void *)newsockfd_ptr);
        if (tret != 0) {
		error("ERROR creating thread");
		//pthread_mutex_lock(&lock);
		//connections -= 1; // Decrement if thread creation fails
	        //pthread_mutex_unlock(&lock);
		sem_post(&sem_mutex);
        } else {
        	pthread_detach(t); // Detach the thread so it can clean up after itself
        }

    }
    //pthread_mutex_destroy(&lock); // Clean up mutex
    sem_destroy(&sem_mutex);
    close(sockfd); // Close the listening socket
    return 0;
}

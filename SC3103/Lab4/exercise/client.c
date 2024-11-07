#include <netdb.h>
#include <netinet/in.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/socket.h>
#include <sys/types.h>
#include <unistd.h>
#include <time.h>

void error(char *m)
{
	perror(m);
	exit(0);
}
int main(int argc, char *argv[]) 
{ 
    int sockfd, port, n;
    struct sockaddr_in serv_addr;
    struct hostent *server;
    char buffer[256];

    // // Print all the arguments received
    // for (int i = 0; i < argc; i++)
    //     printf("Client: argv[%d]: %s\n", i, argv[i]);

    // Need to provide all 3 arguments
    if (argc < 3) error("usage: client [hostname] [port]\n");
    
    port = atoi(argv[2]);
    
    // Create a empty AFINET socket for a TCP socket
    sockfd = socket(AF_INET, SOCK_STREAM, 0);
    if (sockfd < 0) error("ERROR opening socket");
    
    // Get host information
    server = gethostbyname(argv[1]);
    if (server == NULL) error("ERROR, no such host\n");
    
    // Initializes the serv_addr structure to zero to avoid any garbage values
    memset((char *)&serv_addr, 0, sizeof(serv_addr));
    
    //Specifies that the socket will use the Internet address family
    serv_addr.sin_family = AF_INET; // Internet socket

    //Copies the resolved IP address from the server structure to the serv_addr structure.
    //bcopy((char *)server->h_addr,(char*)&serv_addr.sin_addr.s_addr,server->h_length);
    memcpy((char *)&serv_addr.sin_addr.s_addr, server->h_addr_list[0], server->h_length);

    //Converts the port number from host byte order to network byte order using htons() and assigns it to serv_addr.
    serv_addr.sin_port = htons(port);
    
    // Attempts to establish a connection to the server. If it fails, it calls the error() function.
    if (connect(sockfd, (const struct sockaddr*)&serv_addr, sizeof(serv_addr)) < 0)
        error("ERROR connecting");

//Requesting input from user
    
//	printf("Please enter a number: ");
//	fgets(buffer,255,stdin);

    // Send a random number to the server
    srand(time(0));
    int r = (rand() % 100);
    //  Initializes the buffer to zero to ensure it's empty before use.
    memset(buffer, 0, 256); 
    sprintf(buffer, "%d", r);
    printf("\nClient %d: Sending number: %s\n", getpid(), buffer);
    
    // Sends the contents of buffer (the random number) to the server. The write() function returns the number of bytes sent.
    n = write(sockfd, buffer, strlen(buffer));
    if (n < 0)
        error("ERROR writing to socket");
	
    // Clear buffer again for receiving data
    memset(buffer, 0, 256); 

//Getting reply from server    
    //Reads data from the server into buffer. It can read up to 255 bytes to leave space for a null terminator.
    n = read(sockfd, buffer, 255);
    if (n < 0)
        error("ERROR reading from socket");
    
    printf("Client %d received answer: %s\n",getpid(), buffer);
    
    //Cleans up by closing the socket connection.
    close(sockfd);
    return 0;
}

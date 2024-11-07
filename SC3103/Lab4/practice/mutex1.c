#include <stdio.h>
#include <pthread.h>

int global_var = 0;                             //global variable
pthread_mutex_t mutex;
//pthread_mutex_t mutex = PTHREAD_MUTEX_INITIALIZER;

void *inc_gv(void *ptr)
{	
        char *str;
        str = (char *) ptr;
        int i, j;

//	pthread_mutex_lock(&mutex);

        for (i=0;i<10;i++)
        {
		for (j=0;j<5000000;j++);	//delay loop to allow another thread to acquire the lock	
		pthread_mutex_lock(&mutex);
                global_var ++;                  //increment the global variable
                for (j=0;j<5000000;j++);        //delay loop
                printf("%s:", str);             //Printing the current thread
                printf(" %d\n", global_var);    //print the global variable
                fflush(stdout);
		pthread_mutex_unlock(&mutex);
        }

//	pthread_mutex_unlock(&mutex);

}

int main ()
{
        pthread_t threadA, threadB;
        int TAret, TBret;

        char * str1 = "TA";
        char * str2 = "TB";

	pthread_mutex_init(&mutex, NULL);

//      TAret = pthread_create(&threadA, NULL, inc_gv, NULL);
//      TBret = pthread_create(&threadB, NULL, inc_gv, NULL);
	
        TAret = pthread_create(&threadA, NULL, inc_gv, (void *) str1);  
        TBret = pthread_create(&threadB, NULL, inc_gv, (void *) str2);
        pthread_join(threadA, NULL);
        printf("\npthreadA completed \n\n");
        pthread_join(threadB, NULL);
        printf("\npthreadB completed \n\n");
        printf("finished\n");
	pthread_mutex_destroy(&mutex);
        return 0;
}

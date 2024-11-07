#include <stdio.h>
#include <pthread.h>

int global_var = 0;				//global variable

void *inc_gv(void *ptr)
{
	char *str;
	str = (char *) ptr;
	int i, j;
	for (i=0;i<10;i++)
	{
		global_var ++;			//increment the global variable
		for (j=0;j<5000000;j++);	//delay loop
		printf("%s:", str);		//Printing the current thread
		printf(" %d\n", global_var);	//print the global variable
		fflush(stdout);
	}
}

int main ()
{
	pthread_t threadA, threadB;
	int TAret, TBret;

	char * str1 = "TA";
	char * str2 = "TB";

//	TAret = pthread_create(&threadA, NULL, inc_gv, NULL);
//	TBret = pthread_create(&threadB, NULL, inc_gv, NULL);

	TAret = pthread_create(&threadA, NULL, inc_gv, (void *) str1);	
	TBret = pthread_create(&threadB, NULL, inc_gv, (void *) str2);
	pthread_join(threadA, NULL);
	printf("\npthreadA completed \n\n");
	pthread_join(threadB, NULL);
	printf("\npthreadB completed \n\n");
	printf("finished\n");

	return 0;
}

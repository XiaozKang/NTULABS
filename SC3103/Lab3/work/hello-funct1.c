#include <stdio.h>
#include "hello.h"
void helloprint()
{
	printf("Hello World from funct1!\n");
	delay(0x6ffffff);
}

void delay(unsigned int count){
        volatile unsigned int i;
        for (i=0; i<count;i++);

}

#include <stdio.h>
#include "hello.h"


int main()
{
	printf("Hello World from main!\n");
	delay(0x5fffff);
	helloprint();
	counter();
	printf("Bye!\n");
}


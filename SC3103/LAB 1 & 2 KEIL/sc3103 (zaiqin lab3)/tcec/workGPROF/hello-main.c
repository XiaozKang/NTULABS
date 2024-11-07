#include <stdio.h>
#include "hello-main.h"

void delay(unsigned int count) {
	volatile unsigned int i;
	for (i=0; i < count; i++);
}

int main(void) {
	printf("Hello World from main!\n");
	delay(0x5fffff);
	helloprint();
	hellocount();
	printf("Bye!\n");
	return 0;
}

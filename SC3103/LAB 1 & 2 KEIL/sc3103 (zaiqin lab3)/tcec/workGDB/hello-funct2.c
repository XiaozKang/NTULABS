#include <stdio.h>
#include "hello-main.h"

static int count = 0;
char c;

void hellocount(void) 
{
	while (1) {
		if (fread(&c, 1, 1, stdin) > 0) {
			count += 1;
			printf("User pressed %d times\n",count);
		}
	}
}

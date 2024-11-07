#include <stdio.h>
int main()
{
	char i, c;
	while (1)
	{
		i = fread(&c, 1, 1, stdin); //fread(void *ptr, size_t size, size_t nmemb, FILE *stream);
		if (i>0)
			fwrite(&c, 1, 1,stdout); //fwrite(const void *ptr, size_t size, size_t nmemb, FILE *stream);
	}
}

#include <stdio.h>
#include <stdlib.h>
#include <time.h>

#define MAX_ARRAY_SIZE 10000000

void mergeSortHybrid (int *arr, int l, int r, int S);
void mergeHybrid(int *arr, int l, int m, int r);
void insertionSortHybrid(int *arr, int l, int r);
void swap(int *arr, int index1,int index2);
void printArray(int *arr, int size);
void mergeSort (int *arr, int l, int r, int S);

long int count;
int*temp;

int main()
{
    srand(time(NULL)); // Seed the random number generator with the current time
	int i,j,S;
    int *arr = malloc(MAX_ARRAY_SIZE*sizeof(int));
	int *arr1 = malloc(MAX_ARRAY_SIZE*sizeof(int));	
	temp = malloc(MAX_ARRAY_SIZE*sizeof(int));
    
	//S fixed with different sizes of arrays
    /*printf("Enter threshold size of subarrays: \n");
    scanf("%d",&S);
    for (i=1000; i<=MAX_ARRAY_SIZE; i+= 500000) 
    {
        if (i==501000)
		{
            i = 500000;
		}

        for (j=0;j<i;j++)
		{
            arr[j] = 1 + rand() % (i);//min + rand() % (max - min + 1)
		}

        count = 0; //reset key comparison counter for each array 
        clock_t begin = clock();//get starting time
        mergeSortHybrid(arr,0,i-1,S);
        clock_t end = clock();//get ending time

        printf("Size of Array: %d, Time taken: %lf seconds, Number of key comparison: %ld\n",i,(double)(end-begin)/CLOCKS_PER_SEC,count);
    }*/

	//Size of array fixed with different S
	for (i=0;i<MAX_ARRAY_SIZE;i++) //generate array of size 10 million 
	{
		arr[i] = 1 + rand() % (MAX_ARRAY_SIZE);//min + rand() % (max - min + 1)
	}
	
	for (S = 1; S<=100; S++)
	{
		for (i=0;i<MAX_ARRAY_SIZE;i++) //generate array of size 10 million 
		{
			arr[i] = 1 + rand() % (MAX_ARRAY_SIZE);//min + rand() % (max - min + 1)
		}
		
		count = 0; //reset key comparison counter for each threshhold Size
        clock_t begin = clock();//get starting time
        mergeSortHybrid(arr,0,MAX_ARRAY_SIZE-1,S);
        clock_t end = clock();//get ending time
		printf("Size of Array: %d\n", MAX_ARRAY_SIZE);
        printf("Threshold size of subarrays: %d, Time taken: %lf seconds, Number of key comparison: %ld\n",S,(double)(end-begin)/CLOCKS_PER_SEC,count);
	}

	// for each n=5mil,7.5mil and 10mil, S varies C(iii)
	/*for (i=5000000; i<=MAX_ARRAY_SIZE; i+= 2500000) 
    {
		for (S=1;S<=100;S++)
		{
			// if (i==501000)
			// {
			// 	i = 500000;s
			// }
			for (j=0;j<i;j++)
			{
				arr[j] = 1 + rand() % (i);//min + rand() % (max - min + 1)
			}

			count = 0; //reset key comparison counter for each array 
			clock_t begin = clock();//get starting time
			mergeSortHybrid(arr,0,i-1,S);
			clock_t end = clock();//get ending time

			printf("Size of Array: %d, Time taken: %lf seconds, Number of Key Comparisons: %ld Value of S: %d\n",i,(double)(end-begin)/CLOCKS_PER_SEC,count,S);
			
		}	
	}*/
	

	//Compare Normal and Hybrid Sort for S = 17 and n = 10million
	/*i = MAX_ARRAY_SIZE;
	printf("Enter threshold size of subarrays: \n");
    scanf("%d",&S);

	for (j=0;j<i;j++)
	{
		arr[j] = 1 + rand() % (i);//min + rand() % (max - min + 1)
		arr1[j] = arr[j]; //copy into another array for HybridSort
	}

	//normal
	count = 0; //reset key comparison counter for each array 
	clock_t begin1 = clock();//get starting time
	mergeSort(arr,0,i-1,S);
	clock_t end1 = clock();//get ending time
	printf("Normal Merge Sort:\nSize of Array: %d, Time taken: %lf seconds, Number of key comparison: %ld\n",i,(double)(end1-begin1)/CLOCKS_PER_SEC,count);

	//hybrid
	count = 0; //reset key comparison counter for each array 
	clock_t begin2 = clock();//get starting time
	mergeSortHybrid(arr1,0,i-1,S);
	clock_t end2 = clock();//get ending time
	printf("Hybrid Merge Sort:\nSize of Array: %d, Time taken: %lf seconds, Number of key comparison: %ld\n",i,(double)(end2-begin2)/CLOCKS_PER_SEC,count);
	*/
    
	//printArray(arr,100000);
	free(arr);
	free(arr1);
	free(temp);
    return 0;
}

void mergeSortHybrid (int *arr, int l, int r, int S)
{
	if (r-l <= 0) //trivial case
	{
		return;
	}
		
	int m = (l+r) / 2;
	if (r-l<= S) //sub array size <= S
	{
		insertionSortHybrid(arr, l, r);
	}
	else
	{
		mergeSortHybrid(arr, l, m, S);
		mergeSortHybrid(arr, m + 1, r, S);
		mergeHybrid(arr, l, m, r);
	}
	return;
}

void mergeHybrid(int *arr, int l, int m, int r)
{
	int i, j, k;
	i = l;
	j = m+1;
	k = 0;

	if (r<=l)//trivial case
		return;
	while (i<=m && j<=r) //while both subarrays are not empty
    {
        count++;
		if (arr[i] <= arr[j]) //left < right
        {
			temp[k] = arr[i];
			i++;
		}
		else 
        {
			temp[k] = arr[j];
			j++;
		}
		k++;
	}
	// Copy the remaining elements of left subarray, if there are any
	while (i <= m) 
	{
		temp[k] = arr[i];
		i++;
		k++;
	}
	// Copy the remaining elements of right subarray if there are any
	while (j <= r) 
	{
		temp[k] = arr[j];
		j++;
		k++;
	}
	//Copy sorted elements from temp array to original array
	i = l;
	for(k=0;k<r-l+1;k++)
	{
		arr[i] = temp[k];
		i++;
	}
	return;
}

void insertionSortHybrid(int *arr, int l, int r)
{
	int i, key, j;
	if (r<=l)
		return;
	for (i = l+1; i <= r; i++) //traverse elements in array from left to right
    {
		for (j = i; j > l; j--)//start checking from unsorted part of array
		{
			count++;
			if (arr[j] < arr[j-1])
			{
				swap (arr,j,j-1);
			}
			else
			{
				break;
			}	
		}
	}
	return;
}

void swap(int *arr, int index1,int index2)
{
    int temp = arr[index1];
    arr[index1] = arr[index2];
    arr[index2] = temp;
}

void printArray(int *arr, int size)
{
	int i;
	for (i = 0; i < size; i++)
		printf("%d ", arr[i]);
	printf("\n");
    return;
}

void mergeSort (int *arr, int l, int r, int S)
{
	if (r-l <= 0) //trivial case
	{
		return;
	}
		
	int m = (l+r) / 2;
	mergeSortHybrid(arr, l, m, S);
	mergeSortHybrid(arr, m + 1, r, S);
	mergeHybrid(arr, l, m, r);
	return;
}
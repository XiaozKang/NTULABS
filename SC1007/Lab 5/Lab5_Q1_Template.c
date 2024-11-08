#include <stdio.h>
#include <stdlib.h>

void dualSearch (int[],int, int, int[]);

int main()
{
    int i,size,K;
    int* A;
    int index[2] = {-1,-1};

    //Search key
    scanf("%d",&K);

    //create an array
    scanf("%d",&size);
    A=(int *)malloc(sizeof(int)*size);
    for(i=0; i<size; i++)
    {
        scanf("%d",&A[i]);
    }

    dualSearch(A,size,K,index);

    if(index[0]!=-1)
        printf("%d %d\n",index[0], index[1]);
    else
        printf("Not found");

    free(A);
    return 0;
}

void dualSearch(int A[], int size, int K, int dualIndex[])
{
    int i,j,g;
    j=size;
    while(j>0){
    /*for(i=0;i<size;i++){
        g=A[0]+A[i];
        if(g==K){
            dualIndex[0]=A[0];
            dualIndex[1]=A[i];
            return;
        }
    }
    A=&A[1];
    k++; */

    for(i=0;i<j;i++){
        g=(*(A))+(*(A+i));
        if(g==K){
            *(dualIndex)=*(A);
            *(dualIndex+1)=*(A+i);
            return;
        }
    }
    A=A+1;
    j--;
    }
}

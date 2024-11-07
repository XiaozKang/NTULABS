#include <stdio.h>
#include <stdlib.h>

//memory
int *r;


int cr_bottom_up_dp_print(int *p, int n)
{
    int i,j,k,temp1,temp2;
    int cut[n+1];
    for(k=0;k<=n;k++){
        r[k]=0;
        cut[k]=0;
    }
    for(i=1;i<=n;i++){
        temp2=0;
        for(j=1;j<=i;j++){
            temp1=p[j]+r[i-j];
            if(temp1>r[i]){
                temp2=j;
                r[i]=temp1;
            }
        }
        cut[i]=temp2;
    }
    printf("Length of each piece is:\n");
    printcut(n,cut);
    printf("\n");
    return r[n];

}
void printcut(int n,int cut[])
{
    int temp;
    if (n==0)return;

    temp=cut[n];
    printf("%d ",temp);
    printcut(n-temp,cut);

}


void main ()
{
    int n;      //length of  rod
    int function;
    int i;
    int *p;     //price list

    int price_list[10] = {0,1,4,8,9,10,17,17,20,24}; //declare one more value to cover the index 0;

   n = sizeof(price_list) / sizeof(int) - 1;

    p = price_list;


    //allocate the memory array
    r = malloc(sizeof(int) * (n+1));


    //set all memory elements to -1
    for (i=0; i<=n; i++)
        r[i] = -1;

    printf("The maximun value is: %d \n", cr_bottom_up_dp_print(p,n));
}

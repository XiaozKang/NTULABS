#include <stdio.h>

// Function to find the maximum of two integers
int max(int a, int b) 
{
    return (a > b) ? a : b;
}

// //Recursive function P(C,j)
int P(int C, int j, int weights[], int profits[])
{//C is capacity of knapsack, j is # of objects
    int maxProfit = 0;
    
    // base cases
    if (C == 0||j == 0)//either 0 capacity or no object
    {
        return 0;
    }
    for (int i=0; i<j;i++) //for every object
    {
        if (weights[i]<=C)//if ith object can fit into current capacity
           maxProfit = max(maxProfit, profits[i] + P(C-weights[i],j,weights,profits));
    }
    return maxProfit;
}

// Function to compute the maximum profit using bottom-up dynamic programming (Original)
void knapsackBottomUp(int weights[], int profits[], int C, int n) 
{//C is capacity of knapsack, n is # of objects

    int dp[C+1];

    for(int i=0; i<=C;i++) //initialise whole dp array as 0
    {
        dp[i] = 0;
    }

    for(int i=weights[0]; i<=C;i++) //iterating the whole capacity
    {
        for(int j = 0; j<n; j++) //iteracting all n objects to obtain max profit for each capacity
        {
            if(i>=weights[j]){
                dp[i] = (dp[i] > (profits[j] + dp[i - weights[j]]) ? dp[i] : (profits[j] + dp[i - weights[j]]));
            }
        }
    }
    
    for(int i=0;i<=C;i++)// printing the whole DP array
    {
        printf("|%d| ", dp[i]);
    }
    printf("\n");
}


int main() 
{
    int C = 14; // Capacity
    int n = 3;  // Number of object types
    int w[] = {4, 6, 8}; // Weight of each object type
    int p[] = {7, 6, 9}; // Profit of each object type

    printf("DP table for first case:\n");
    knapsackBottomUp(w, p, C, n); 
    // printf("Recursive function max profit: %d\n", P(C,n,w,p));

    int w1[] = {5, 6, 8};
    int p1[] = {7, 6, 9};

    printf("DP table for second case:\n");
    knapsackBottomUp(w1, p1, C, n);
    
    

    return 0;
}



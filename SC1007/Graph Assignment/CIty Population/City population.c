#include<stdio.h>
#include <stdlib.h>

int* city_population (int N, int* population, int** road, int Q, int** cities) ;

int main() {
    int N;
    scanf("%d", &N);
    int i_population;
    int *population = (int *)malloc(sizeof(int)*(N));
    for(i_population = 0; i_population < N; i_population++)
    	scanf("%d", &population[i_population]);
    int i_road, j_road;
    int **road = (int **)malloc((N-1)*sizeof(int *));
    for(i_road = 0; i_road < N-1; i_road++)
    {
    	road[i_road] = (int *)malloc((2)*sizeof(int));
    }
    for(i_road = 0; i_road < N-1; i_road++)
    {
    	for(j_road = 0; j_road < 2; j_road++)
    	{
    		scanf("%d", &road[i_road][j_road]);
    	}
    }
    int Q;
    scanf("%d", &Q);
    int i_cities, j_cities;
    int **cities = (int **)malloc((Q)*sizeof(int *));
    for(i_cities = 0; i_cities < Q; i_cities++)
    {
    	cities[i_cities] = (int *)malloc((3)*sizeof(int));
    }
    for(i_cities = 0; i_cities < Q; i_cities++)
    {
    	for(j_cities = 0; j_cities < 3; j_cities++)
    	{
    		scanf("%d", &cities[i_cities][j_cities]);
    	}
    }

    int* out_ = city_population(N, population, road, Q, cities);
    printf("%d", out_[0]);
    int i_out_;
    for(i_out_ = 1; i_out_ < Q; i_out_++)
    	printf("\n%d", out_[i_out_]);
}

typedef struct _listnode
{
    int vertex;
	struct _listnode *next;
} ListNode;


int DFS(int target,int* population,int **cities,ListNode **cityconnection, int cur,int *visited,int *count, int k);

int DFS(int target,int* population,int **cities,ListNode **cityconnection, int cur,int *visited,int *count, int k){
    int i,j;
    ListNode *temp1,*temp2;
    if(population[cur-1]<=cities[k][2])count[k]++;
    visited[cur-1]=1;
    if(cur==target)return 1;
    temp1=temp2 = cityconnection[cur-1];
    while(temp2!=NULL){
        if(visited[temp2->vertex-1]==0){
            j=DFS(target,population,cities,cityconnection,temp2->vertex,visited, count,k);
            if(j==1)return 1;
            if(j==0){
                temp2=temp2->next;
            }
        }
        else temp2=temp2->next;
    }
    if(population[cur-1]<=cities[k][2])count[k]--;
    return 0;
}


int* city_population (int N, int* population, int** road, int Q, int** cities)
{
    int i,j,k,a,b;
    int *count, *visited;
    ListNode **cityconnection;
    ListNode *temp1, *temp2,*temp3;
    count = (int*)malloc(Q*sizeof(int));
    visited = (int*)malloc(N*sizeof(int));
    cityconnection = (ListNode**)malloc(N*sizeof(ListNode*));
    for(i=0;i<Q;i++){
        count[i] = 0;
    }
    for(a=0;a<N;a++){
        visited[a]=0;
        cityconnection[a]=NULL;
    }
    if(N==0||Q==0) return count;

    for(j=0;j<(N-1);j++){
        temp1 = cityconnection[(road[j][0])-1];
        cityconnection[road[j][0]-1]=(ListNode*)malloc(sizeof(ListNode));
        cityconnection[road[j][0]-1]->vertex = road[j][1];
        cityconnection[road[j][0]-1]->next = temp1;
        temp2 = cityconnection[road[j][1]-1];
        cityconnection[road[j][1]-1]=(ListNode*)malloc(sizeof(ListNode));
        cityconnection[road[j][1]-1]->vertex = road[j][0];
        cityconnection[road[j][1]-1]->next = temp2;
    }
    for(k=0;k<Q;k++){
        for(a=0;a<N;a++){
            visited[a]=0;
        }
        b=DFS(cities[k][1],population,cities,cityconnection,cities[k][0],visited,count,k);
    }

    free(visited);
    for(i=0;i<N;i++){
        while(cityconnection[i]!=NULL){
            temp3=cityconnection[i];
            cityconnection[i]=temp3->next;
            free(temp3);
        }
    }
    free(cityconnection);
    return count;
}

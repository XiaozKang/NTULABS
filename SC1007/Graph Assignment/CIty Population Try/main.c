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
typedef ListNode QueueNode;

typedef struct _queue{
   int size;
   QueueNode *head;
   QueueNode *tail;
} Queue;
void enqueue(Queue *qPtr, int item);
int dequeue(Queue *qPtr);
int getFront(Queue q);
int isEmptyQueue(Queue q);
void removeAllItemsFromQueue(Queue *qPtr);
int LCA(ListNode **cityconnection,int *population,int **cities,int cur,int target,int* visited,int k, int N);


void enqueue(Queue *qPtr, int item) {
    QueueNode *newNode;
    newNode = malloc(sizeof(QueueNode));
    if(newNode==NULL) exit(0);

    newNode->vertex = item;
    newNode->next = NULL;

    if(isEmptyQueue(*qPtr))
        qPtr->head=newNode;
    else
        qPtr->tail->next = newNode;

    qPtr->tail = newNode;
    qPtr->size++;
}

int dequeue(Queue *qPtr) {
    if(qPtr==NULL || qPtr->head==NULL){ //Queue is empty or NULL pointer
        return 0;
    }
    else{
       int headValue = qPtr->head->vertex;
       QueueNode *temp = qPtr->head;
       qPtr->head = qPtr->head->next;
       if(qPtr->head == NULL) //Queue is emptied
           qPtr->tail = NULL;

       free(temp);
       qPtr->size--;
       return headValue;
    }
}

int getFront(Queue q){
    return q.head->vertex;
}

int isEmptyQueue(Queue q) {
    if(q.size==0) return 1;
    else return 0;
}

void removeAllItemsFromQueue(Queue *qPtr)
{
	while(dequeue(qPtr));
}

int LCA(ListNode **cityconnection,int* population,int **cities,int cur,int target,int* visited,int k, int N){
    int i,even,j;
    int flag = 0;
    int count[2*N];
    for(j=0;j<2*N;j++){
        count[j]=0;
    }
    ListNode *temp1=NULL;
    Queue q1;
    q1.size=0;
    q1.head=NULL;
    q1.tail=NULL;

    enqueue(&q1,cur);
    enqueue(&q1,target);
    visited[cur-1]=visited[target-1]=1;
    printf("cities limit = %d, population target = %d \n",cities[k][2],population[target-1] );
    if(population[cur-1]<=cities[k][2]){
            count[cur-1]++;
    }
    if(population[target-1]<=cities[k][2]){
            count[target+N-1]++;
    }
    even=0;

    while(!isEmptyQueue(q1)){
        i=getFront(q1);
        dequeue(&q1);
        temp1=cityconnection[i-1];
        if(temp1!=NULL){
            if(visited[temp1->vertex-1]==1){
                    if(even==0)return(count[i-1]+count[temp1->vertex+N-1]);
                    if(even==1)return(count[i+N-1]+count[temp1->vertex-1]);
            }
            enqueue(&q1,temp1->vertex);
            visited[temp1->vertex-1]=1;
            if(even==0){
                    if(population[temp1->vertex-1]<=cities[k][2]){
                            count[temp1->vertex-1]=count[i-1]+1;
                    }
                    if(flag==0)even=1;
                    continue;
            }
            if(even==1){
                    if(population[temp1->vertex-1]<=cities[k][2]){
                            count[temp1->vertex+N-1]=count[i+N-1]+1;
                    }
                    if(flag==0)even=0;
                    continue;
            }
        }
        else if(temp1==NULL) {
                if(even==0)even=1;
                else if(even==1)even=0;
                flag=1;
        }
    }
}

int* city_population (int N, int* population, int** road, int Q, int** cities)
{
    int i,j,k,a,b,c,d,e,f;
    int q;
    int cur,target;
    int *count, *visited;
    int *level;
    ListNode **cityconnection;
    ListNode *temp1, *temp2,*temp3;
    level = (int*)malloc(N*sizeof(int));
    count = (int*)malloc(Q*sizeof(int));
    visited = (int*)malloc(N*sizeof(int));
    cityconnection = (ListNode**)malloc(N*sizeof(ListNode*));
    for(i=0;i<Q;i++){
        count[i] = 0;
    }
    for(a=0;a<N;a++){
        level[a]=-1;
        visited[a]=0;
        cityconnection[a]=NULL;
    }
    if(N==0||Q==0) return count;
    level[road[0][0]-1]=0; //setting the first starting city as a root
    level[road[0][1]-1]=level[road[0][0]-1]+1;
    q=N-1;
    q--;

    while(q!=0){
        for(d=1;d<N-1;d++){
            if(level[(road[d][0])-1]>level[(road[d][1])-1]){
                c=level[(road[d][1])-1];
                if(c==-1){
                    level[(road[d][1])-1]=level[(road[d][0])-1]+1;
                    q--;
                }
            }
            if(level[(road[d][1])-1]>level[(road[d][0])-1]){
                c=level[(road[d][0])-1];
                if(c==-1){
                    level[(road[d][0])-1]=level[(road[d][1])-1]+1;
                    q--;
                }
            }
            continue;
        }
    }
    for(j=0;j<(N-1);j++){
            temp1=cityconnection[road[j][0]-1];
            temp2 = cityconnection[road[j][1]-1];
            if(level[road[j][0]-1]>level[road[j][1]-1]){
                cityconnection[road[j][0]-1]=(ListNode*)malloc(sizeof(ListNode));
                cityconnection[road[j][0]-1]->vertex = road[j][1];
                cityconnection[road[j][0]-1]->next = temp1;
            }
            else if(level[road[j][0]-1]<level[road[j][1]-1]){
                cityconnection[road[j][1]-1]=(ListNode*)malloc(sizeof(ListNode));
                cityconnection[road[j][1]-1]->vertex = road[j][0];
                cityconnection[road[j][1]-1]->next = temp2;
            }

    }
    for(b=0;b<N;b++){
    temp1=cityconnection[b];
    printf("%d:",b);
    while(temp1!=NULL){
            printf("%d ->",temp1->vertex);
            temp1=temp1->next;
    }
    printf("\n");
    printf("level %d",level[b]);
    printf("\n");
    }
    for(k=0;k<Q;k++){
        for(f=0;f<N;f++){
            visited[f]=0;
        }
        cur=cities[k][0];
        target=cities[k][1];
        count[k]=LCA(cityconnection,population,cities,cur,target,visited,k, N);

    }

    free(visited);
    for(e=0;e<N;e++){
        while(cityconnection[e]!=NULL){
            temp3=cityconnection[e];
            cityconnection[e]=temp3->next;
            free(temp3);
        }
    }
    free(cityconnection);
    return count;
}

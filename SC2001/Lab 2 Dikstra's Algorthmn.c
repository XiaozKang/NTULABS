#include <stdio.h>
#include <stdbool.h>
#include <limits.h>
#include <time.h>
#include <stdlib.h>

typedef struct _listnode
{
    int vertex;
	struct _listnode *next;
} QueueNode;

typedef struct _queue{
   int size;
   QueueNode *head;
   QueueNode *tail;
}Queue;

void heapSort();
int dijkstra(int** graph, int *dist, int *pi, Queue q, bool *S);
void insertpq(Queue *q, int weight, int x, int *dist);
int Minimum(Queue q);
void extractMin(Queue *q, int x);

int V=10;

int main(){
    int E=0;

    Queue q;
    q.head=NULL;
    q.tail=NULL;
    q.size=0;
    int *pi = NULL;
    int *dist = NULL;
    bool *S = NULL;;
    int **graph;
    int i,j;

    dist = (int *)malloc(V*sizeof(int));  //length of shortest path from source node to all vertices
    S = (bool *)malloc(V*sizeof(bool)); //to check whether vertex is already included

    graph = (int **)malloc(V*sizeof(int *));
    for(i=0;i<V;i++)
        graph[i] = (int *)malloc(V*sizeof(int));

    for(i=0;i<V;i++){
       for(j=0;j<V;j++){
           graph[i][j] = (rand() % (20 - 0 + 1)) + 0; //generating different edges with weight between 1-20, 0 means no edge
           if(graph[i][j]!=0) E++;
           printf("%d, %d\n",E, graph[i][j]);
       }
    }


    printf("%d", dijkstra(graph, dist, pi, q, S));

    free(dist);
    free(S);
    free(graph);


}

int dijkstra(int** graph, int *dist, int *pi, Queue q, bool *S){
    int c=0;
    for (int i = 0; i<V; i++){
        dist[i] = 10000;
        S[i]=false;
    }

    dist[0]=0; //treating the first element 0 as the source
    S[0]=true;

    for(int j=0; j<V; j++){ //inserting shortest distance that is connected to source
        if(graph[0][j]!=0 && !S[j]){
            dist[j]=graph[0][j];
            insertpq(&q, dist[j], j, dist);
        }
    }

    while(q.size>0){
        int min = Minimum(q);
        S[min]=true;
        extractMin(&q, min);
        c++;
        for(int a=0; a<V; a++){
            if((!S[a]) && (graph[min][a]!=0) && (dist[a]>(dist[min]+graph[min][a]))){
                extractMin(&q, a);
                dist[a]=dist[min]+graph[min][a];
                insertpq(&q, dist[a], a, dist);
            }
        }
    }
    return c;


}

void insertpq(Queue *q, int weight, int x, int *dist){
    QueueNode *newNode;
    newNode = malloc(sizeof(QueueNode));
    QueueNode *temp;
    QueueNode *prev;

    if (q->size == 0){
        q->head = newNode;
        newNode->vertex = x;
        newNode->next = NULL;
    }
    else{
        temp=q->head;
        for(int o=0; o<q->size; o++){
            if(weight>dist[temp->vertex]){
                prev=temp;
                temp=temp->next;
            }
            else break;
        }
        prev->next = newNode;
        newNode->vertex = x;
        newNode->next = temp;
    }
    q->size++;
}

void extractMin(Queue *q, int x){
    if(q->size == 0)return;
    QueueNode *temp = q->head;
    QueueNode *second;
    QueueNode *prev;

    while(temp->vertex !=x){
        if(temp==NULL)break;
        prev=temp;
        temp=temp->next;
    }
    second = temp->next;
    if(x==q->head->vertex){
        q->head = second;
    }
    else{
        prev->next=second;
    }
    q->size--;
}

int Minimum(Queue q){
    return q.head->vertex;
}


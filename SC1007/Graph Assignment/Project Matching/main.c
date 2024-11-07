#include <stdio.h>
#include <stdlib.h>

typedef struct _listnode
{
 int vertex;
 struct _listnode *next;
} ListNode;
typedef ListNode StackNode;

typedef struct _graph{
 int V;
 int E;
 ListNode **list;
 int* parent;
}Graph;


typedef ListNode QueueNode;

typedef struct _queue{
 int size;
 QueueNode *head;
 QueueNode *tail;
} Queue;

typedef struct _stack
{
 int size;
 StackNode *head;
} Stack;

void insertAdjVertex(ListNode** AdjList,int vertex);
void removeAdjVertex(ListNode** AdjList,int vertex);
int matching(Graph g);
int BFS(Graph g);

void enqueue(Queue *qPtr, int item);
int dequeue(Queue *qPtr);
int getFront(Queue q);
int isEmptyQueue(Queue q);
void removeAllItemsFromQueue(Queue *qPtr);
void printQ(QueueNode *cur);
//////STACK///////////////////////////////////////////
void push(Stack *sPtr, int vertex);
int pop(Stack *sPtr);
int peek(Stack s);
int isEmptyStack(Stack s);
void removeAllItemsFromStack(Stack *sPtr);
//////////////////////////////////

int main()
{
 int Prj, Std, Mtr; //Project, Student and Mentor;
 int maxMatch;
 scanf("%d %d %d", &Std, &Prj, &Mtr);

 int np,nm; //number of projects and number of mentors
 int i,j,k,a,b,c,d,e;

 ListNode* temp = NULL;

 //build graph
 Graph g;
 g.V=Prj+2*Std+Mtr+2;
 g.E=0;
 g.list=(ListNode**)malloc(g.V*sizeof(ListNode*));

 for(a=0;a<g.V;a++){
    g.list[a]=NULL;
 }
 for(b=0;b<Prj;b++){
    insertAdjVertex(&g.list[0],b+1);
 }
 for(c=0;c<Mtr;c++){
    insertAdjVertex(&g.list[Prj+2*Std+c+1],g.V-1);
 }


 for(i=0;i<Std;i++){
    scanf("%d %d", &np, &nm);
    while(np!=0){
        scanf(" %d", &d);
        insertAdjVertex(&g.list[d],Prj+i+1);
        np--;
        g.E++;
    }
    while(nm!=0){
        scanf(" %d", &e);
        insertAdjVertex(&g.list[Prj+Std+i+1],Prj+2*Std+e);
        nm--;
        g.E++;
    }
    insertAdjVertex(&g.list[Prj+i+1],Prj+Std+i+1);
 }


 //apply Ford Fulkerson algorithm
 // use DFS or BFS to find a path
 maxMatch = matching(g);
 printf("%d\n", maxMatch);
 return 0;
}

int matching(Graph g)
{
    int count=0;
    int i,j,k;
    g.parent=(int*)malloc(g.V*sizeof(int));

    while(BFS(g)){
        for(i=g.V-1;i!=0;i=g.parent[i]){
            j=g.parent[i];
            removeAdjVertex(&g.list[j],i);
            insertAdjVertex(&g.list[i],j);
        }
        count++;
    }
    return count;
}

int BFS(Graph g){
    Queue q;
    q.head=NULL;
    q.size=0;
    q.tail=NULL;
    int i,j,k;
    ListNode* temp=NULL;

    for(i=0;i<g.V;i++){
        g.parent[i]=-1;
    }
    enqueue(&q,0);
    g.parent[0]=-2;

    while(!isEmptyQueue(q)){
        j=getFront(q);
        dequeue(&q);
        temp=g.list[j];
        if(j==g.V-1) return 1;
        while(temp!=NULL){
            if(g.parent[temp->vertex]==-1){
                g.parent[temp->vertex]=j;
                enqueue(&q,temp->vertex);
            }
            temp=temp->next;
        }
    }
    return 0;
}

void removeAdjVertex(ListNode** AdjList,int vertex)
{
 ListNode *temp, *preTemp;
 if(*AdjList != NULL)
 {
    if((*AdjList)->vertex ==vertex){//first node
      temp = *AdjList;
      *AdjList = (*AdjList)->next;
      free(temp);
      return;
    }
    preTemp = *AdjList;
    temp = (*AdjList)->next;
    while(temp!=NULL && temp->vertex != vertex)
    {
      preTemp= temp;
      temp = temp->next;
    }
    preTemp->next = temp->next;
    free(temp);
   }
}

void insertAdjVertex(ListNode** AdjList,int vertex)
{
  ListNode *temp;
  if(*AdjList==NULL)
  {
     *AdjList = (ListNode *)malloc(sizeof(ListNode));
     (*AdjList)->vertex = vertex;
     (*AdjList)->next = NULL;
  }
  else{
     temp = (ListNode *)malloc(sizeof(ListNode));
     temp->vertex = vertex;
     temp->next = *AdjList;
     *AdjList = temp;
  }
}

void enqueue(Queue *qPtr, int vertex) {
  QueueNode *newNode;
  newNode = malloc(sizeof(QueueNode));
  if(newNode==NULL) exit(0);

  newNode->vertex = vertex;
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
     QueueNode *temp = qPtr->head;
     qPtr->head = qPtr->head->next;
     if(qPtr->head == NULL) //Queue is emptied
       qPtr->tail = NULL;

     free(temp);
     qPtr->size--;
     return 1;
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

void printQ(QueueNode *cur){
 if(cur==NULL) printf("Empty");

 while (cur != NULL){
    printf("%d ", cur->vertex);
    cur = cur->next;
  }
 printf("\n");
}

void push(Stack *sPtr, int vertex)
{
  StackNode *newNode;
  newNode= malloc(sizeof(StackNode));
  newNode->vertex = vertex;
  newNode->next = sPtr->head;
  sPtr->head = newNode;
  sPtr->size++;
}

int pop(Stack *sPtr)
{
  if(sPtr==NULL || sPtr->head==NULL){
     return 0;
  }
  else{
     StackNode *temp = sPtr->head;
     sPtr->head = sPtr->head->next;
     free(temp);
     sPtr->size--;
     return 1;
   }
}

int isEmptyStack(Stack s)
{
    if(s.size==0) return 1;
    else return 0;
}

int peek(Stack s){
   return s.head->vertex;
}

void removeAllItemsFromStack(Stack *sPtr)
{
   while(pop(sPtr));
}

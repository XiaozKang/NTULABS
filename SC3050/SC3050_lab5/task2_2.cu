#include <stdio.h>
#define N 4

__global__ void vector_add(int *d_a, int *d_b, int *d_c){
    int i = blockIdx.x * blockDim.x + threadIdx.x;
    d_c[i] = d_a[i] + d_b[i];
}

int main(void){
    int a[N] = {22,13,16,5};
    int b[N] = {5,22,17,37};
    int c[N];

    int *d_a, *d_b, *d_c;

    // Allocate Memory on the GPU
    cudaMalloc((void**)&d_a, sizeof(int)*N);
    cudaMalloc((void**)&d_b, sizeof(int)*N);
    cudaMalloc((void**)&d_c, sizeof(int)*N);
    // Copy memory from CPU into GPU memory allocated
    cudaMemcpy(d_a, a, sizeof(int)*N, cudaMemcpyHostToDevice);
    cudaMemcpy(d_b, b, sizeof(int)*N, cudaMemcpyHostToDevice);
    // Running on 1 threadblock of 4 threads
    vector_add<<<1,N>>>(d_a, d_b, d_c);
    // Copy result vector from GPU memory to CPU host memory
    cudaMemcpy(c, d_c, sizeof(int)*N, cudaMemcpyDeviceToHost);
    // Free GPU memory
    cudaFree(d_a);
    cudaFree(d_b);
    cudaFree(d_c);
    // Printing the inputs and outputs of the vector addition
    printf("A\t");
    for( int i = 0; i < N; i++) printf("%d\t", a[i]);
    printf("\nB\t");
    for( int i = 0; i < N; i++) printf("%d\t", b[i]);
    printf("\nC\t");
    for( int i = 0; i < N; i++) printf("%d\t", c[i]);
    printf("\n");
    return 0;
}

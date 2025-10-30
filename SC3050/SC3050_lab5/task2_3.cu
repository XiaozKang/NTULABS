#include <stdio.h>
#define N 4

__global__ void dot_prod(int *d_a, int *d_b, int *d_c){
    __shared__ int temp[N];;
    int i = blockIdx.x * blockDim.x + threadIdx.x;
    temp[i] = d_a[i] * d_b[i];
    __syncthreads(); //Synchronize threads
    if (i==0){
        int sum = 0;
        for (int j = 0; j < N; j++) sum = sum + temp[j];
        *d_c = sum;
    }
}

int main(void){
    int a[N] = {22,13,16,5};
    int b[N] = {5,22,17,37};
    int c;

    int *d_a, *d_b, *d_c;

    // Allocate Memory on the GPU
    cudaMalloc((void**)&d_a, sizeof(int)*N);
    cudaMalloc((void**)&d_b, sizeof(int)*N);
    cudaMalloc((void**)&d_c, sizeof(int));
    // Copy memory from CPU into GPU memory allocated
    cudaMemcpy(d_a, a, sizeof(int)*N, cudaMemcpyHostToDevice);
    cudaMemcpy(d_b, b, sizeof(int)*N, cudaMemcpyHostToDevice);
    // Running on 1 threadblock of 4 threads
    dot_prod<<<1,N>>>(d_a, d_b, d_c);
    // Copy result vector from GPU memory to CPU host memory
    cudaMemcpy(&c, d_c, sizeof(int), cudaMemcpyDeviceToHost);
    // Free GPU memory
    cudaFree(d_a);
    cudaFree(d_b);
    cudaFree(d_c);
    // Printing the inputs and outputs of the vector addition
    printf("A\t");
    for( int i = 0; i < N; i++) printf("%d\t", a[i]);
    printf("\nB\t");
    for( int i = 0; i < N; i++) printf("%d\t", b[i]);
    printf("\nAnswer = %d\t", c);
    printf("\n");
    return 0;
}

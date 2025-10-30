#include <stdio.h>

__global__ void cuda_hello(int n) {
    printf("Hello from GPU%d[%d]!\n", n, threadIdx.x);
}

int main(void){
    printf("Hello from CPU!\n");
    cuda_hello<<<1,4>>>(1);
    cuda_hello<<<1,6>>>(2);
    cudaDeviceSynchronize();
    return 0;
}

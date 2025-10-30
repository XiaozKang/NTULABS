#include <stdio.h>
#define days 7
#define items 4

__global__ void compute(int *d_data, float *d_price, float *d_sales, float *d_total){
    __shared__ float temp[items];
    int i = blockIdx.x * blockDim.x + threadIdx.x;
    int j = blockIdx.x * blockDim.x;
    temp[threadIdx.x] = d_data[i] * d_price[threadIdx.x];
    __syncthreads();
    if (i == j){
        float sum = 0.0;
        for (int k = 0; k < items; k++) sum += temp[k];
        d_sales[blockIdx.x] = sum;
    }
    __syncthreads();
    if (i == 0){
    	float total = 0.0;
	for (int k = 0; k < days; k++) total += d_sales[k];
	*d_total = total;
    }
}

int main(void){
    int data[days][items] = { {3,5,2,0},{2,4,5,1},{0,3,3,1},{3,5,4,4},
                               {4,5,5,3},{10,13,21,16},{8,11,15,8}   };
    float price[items] = {29.99,14.99,9.99,24.99};
    float sales[days];
    float total;

    int *d_data; 
    float *d_price, *d_sales, *d_total;

    // Allocate Memory on the GPU
    cudaMalloc((void**)&d_data,  sizeof(int)*days*items);
    cudaMalloc((void**)&d_price, sizeof(float)*items);
    cudaMalloc((void**)&d_sales, sizeof(float)*days);
    cudaMalloc((void**)&d_total, sizeof(float));
    // Copy memory from CPU into GPU memory allocated
    cudaMemcpy(d_data,  data,  sizeof(int)*days*items, cudaMemcpyHostToDevice);
    cudaMemcpy(d_price, price, sizeof(float)*items,    cudaMemcpyHostToDevice);
    // Running on 1 threadblock of 4 threads
    compute<<<days,items>>>(d_data, d_price, d_sales, d_total);
    // Copy result vector from GPU memory to CPU host memory
    cudaMemcpy(sales,  d_sales, sizeof(float)*days, cudaMemcpyDeviceToHost);
    cudaMemcpy(&total, d_total, sizeof(float),	    cudaMemcpyDeviceToHost);
    // Free GPU memory
    cudaFree(d_data);
    cudaFree(d_price);
    cudaFree(d_sales);
    cudaFree(d_total);
    // Printing the inputs and outputs of the vector addition
    printf("Sales per day :\t\n");
    for( int i = 0; i < days; i++) printf("%.2f\n", sales[i]);
    printf("Total Sales :\t%.2f\n", total);
    return 0;
}

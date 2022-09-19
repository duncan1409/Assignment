﻿#include <stdlib.h>
#include <stdio.h>
#define SIZE 10
 
__global__ void test(int *a, int *b){
    int i = threadIdx.x;
    b[i] = a[i] + 1;
}
 
int main(){
    int *a, *b;
    int *d_a, *d_b; 
 
    a = (int *)malloc(SIZE*sizeof(int));
    b = (int *)malloc(SIZE*sizeof(int));

    // 아래 assignment 에 해당하는 코드를 작성하여 전체 코드를 완성하고, CPP 파일과 동일한 output 이 출력되도록 하시오.

    cudaMalloc((void**)&d_a, SIZE*sizeof(int));
    cudaMalloc((void**)&d_b, SIZE*sizeof(int));
    
    for (int i = 0; i<SIZE; ++i)
    {
        a[i] = i;
        b[i] = 0;
    }
    
    
    cudaMemcpy(d_a, a, SIZE*sizeof(int), cudaMemcpyHostToDevice);
    cudaMemcpy(d_b, b, SIZE*sizeof(int), cudaMemcpyHostToDevice);
    test <<< 1, SIZE >>>(d_a, d_b); // launch test function
    cudaMemcpy(b, d_b, SIZE*sizeof(int), cudaMemcpyDeviceToHost);

    for (int i = 0; i<SIZE; i++)
        printf("b[%d] = %d\n", i, b[i]);    // print the results
 
    free(a);    // free the host memory spaces
    free(b);    // free the host memory spaces
    
    cudaFree(d_a);    // free the device memory spaces 
    cudaFree(d_b);    // free the device memory spaces 
    return 0;
}
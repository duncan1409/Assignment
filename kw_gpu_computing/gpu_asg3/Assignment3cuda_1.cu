#include <stdio.h>
#include <stdio.h>
#include <iostream>

#define N 10;
__global__ void add(int *a, int *b, int *c)
{
    int tid = threadIdx.x;
    if (tid < N)
        c[tid] = a[tid] + b[tid];
}

int main(void)
{
    int a[N], b[N], C[N];
    int *dev_a, *dev_b, *dev_c;

    //Device 메모리 할당
    HANDLE_ERROR(cudaMalloc((void**)&dev_a, N*sizeof(int)));
    HANDLE_ERROR(cudaMalloc((void**)&dev_b, N*sizeof(int)));
    HANDLE_ERROR(cudaMalloc((void**)&dev_c, N*sizeof(int)));

    //Host에서 배열 'a'와 'b'를 채운다.
    for (int i=0; i<N; i++){
        a[i]=i;
        b[i]=i*i;
    }

    //생성한 배열 'a'와 'b'를 Device로 복사
    HANDLE_ERROR(cudaMemcpy(dev_a, a, N*sizeof(int), cudamMemcpyHostToDevice));
    HANDLE_ERROR(cudaMemcpy(dev_b, b, N*sizeof(int), cudamMemcpyHostToDevice));

    add<<<1,N>>> (dev_a, dev_b, dev_c);

    //배열 'c'를 Device에서 다시 Host로 복사
    HANDLE_ERROR(cudaMemcpy(dev_c, c, N*sizeof(int), cudamMemcpyDeviceToHost));

    //결과 출력
    for (int i=0; i<N; i++){
        printf("%d + %d = %d\n", a[i], b[i], c[i];);
    }

    //Device에 할당된 메모리 해제
    cudaFree(dev_a);
    cudaFree(dev_b);
    cudaFree(dev_c);

    return 0;
}
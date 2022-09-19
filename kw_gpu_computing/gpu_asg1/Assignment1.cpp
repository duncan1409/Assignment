#include <stdio.h>
#include <iostream>
#define SIZE 10

void test(int *a, int *b, int i){
  b[i] = a[i] + 1;
}
int main(){
  int *a, *b;
  a = (int *)malloc(SIZE*sizeof(int));
  b = (int *)malloc(SIZE*sizeof(int));
  for(int i=0; i<SIZE; ++i){
    a[i] = i;
    b[i] = 0;
  }
  for (int i=0; i<SIZE; i++){
    test(a, b, i);
  }
  for(int i=0; i<SIZE; i++)
    printf("b[%d] = %d\n", i, b[i]);
  free(a);
  free(b);
  return 0;
}

#include <stdio.h>
#define MAX_LEN 5
//C스타일

void InsertionSort(int *arr)
{ //주소를 받겠다. (배열 또는 포인터를 받겠다.)
    int i, j;
    int key;

    for (i = 1; i < MAX_LEN; i++)
    {
        key = arr[i];
        for (j = i - 1; j >= 0; j--)
        {
            if (arr[j] > key)
            {
                arr[j + 1] = arr[j];
            }
            else
            {
                break;
            }
        }
        arr[j + 1] = key;
    }
}
int main(void)
{
    int arr[MAX_LEN] = {9, 5, 3, 7, 1};
    int i;
    for (i = 0; i < MAX_LEN; i++)
    {
        printf("%d", arr[i]);
    }
    printf("\n");

    InsertionSort(arr);

    for (i = 0; i < MAX_LEN; i++)
    {
        printf("%d", arr[i]);
    }
    printf("\n");

    return 0;
}

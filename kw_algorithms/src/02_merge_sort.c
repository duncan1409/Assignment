#include <stdio.h>

int sorted[8]; // sorted array

void MergeSort(int *data, int start, int mid, int end)
{
    int i = start;
    int j = mid + 1;
    int k = start;

    while (i <= mid && j <= end)
    {
        if (data[i] <= data[j])
        {
            sorted[k] = data[i];
            i++;
        }
        else
        {
            // data[i]>data[j]
            sorted[k] = data[j];
            j++;
        }
        k++;
    }
    if (i > mid)
    {
        for (int t = j; t <= end; t++)
        {
            sorted[k] = data[t];
            k++;
        }
    }
    else
    {
        for (int t = i; t <= mid; t++)
        {
            sorted[k] = data[t++];
            k++;
        }
    }
    // mergeing sorted array
    for (int t = start; t <= end; t++)
    {
        data[t] = sorted[t];
    }
}

#define _CRT_SECURE_NO_WARNINGS
#include <iostream>
#include <cstdio>
#include <cstdlib>
#include <fstream>

#define MAX 100
using namespace std;

int main()
{
  char *n[MAX];
  char *name;

  FILE *fp = NULL;
  int cnt = 0;

  fp = fopen("./filesnumbers.csv", "rb");
  if (fp == NULL)
  {
    fprintf(stderr, "File Open Error!\n");
    exit(1);
  }
  for (int i = 0; i < MAX; i++)
  {
    name = (char *)malloc(sizeof(char) * MAX);
    fgets(name, MAX, fp);
    n[i] = name;
    //check csv files
    printf("%s", n[i]);
  }

  fclose(fp);

  return 0;
}

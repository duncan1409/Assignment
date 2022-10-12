#define _CRT_SECURE_NO_WARNINGS
#include <iostream>
#include <cstdio>
#include <cstdlib>
#include <vector>
#include <fstream>
#include <string>
#include "list.cpp"

#define MAX 100
using namespace std;

int main()
{
  string csvfiles;
  string str_buf;
  fstream fs;
  FILE *fp = NULL;
  Loaded_LIST<string> list;

  fp = fopen("./filesnumbers.csv", "rb");

  fs.open("./filesnumbsers.csv", ios::in);
  if (fp == NULL)
  {
    fprintf(stderr, "=======ERROR=======\n300\n===================\n");
    exit(1);
  }
  else
  {
    int i = 0;
    while (!fs.eof())
    {
      getline(fs, str_buf);
      csvfiles = str_buf;
      if (i==0)
      {
        string sub1=csvfiles.substr(0,6);
        string sub0=csvfiles.erase(0,7);
        list.insert(i, sub0, sub1);
      }
      else
      {
        string sub3 = csvfiles.substr(0, 3);
        string sub2 = csvfiles.erase(0, 4);
        list.insert(i, sub2, sub3);
      }
      i++;
    }
    fs.close();
  }
}

/*
    // 노드를 제거한 이후에 리스트의 크기 출력m
    cout << "리스트 크기 확인하기" << endl;
    cout << "리스트의 크기: " << list.size();

    // 노드 3개만 출력
    cout << "일부 노드만 출력하기" << endl;
    cout << list.get(0);
    cout << list.get(3);
    cout << list.get(5);


    // 노드 3개 제거
    cout << "노드 일부 제거하고 노드 출력하기" << endl;
    list.erase(0);
    list.erase(3);
    list.print();*/
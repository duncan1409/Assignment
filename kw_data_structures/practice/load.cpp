#ifndef LOAD_CPP
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

//int main(int argc, char **argv)
void Load ()
{
  string str_buf;
  fstream fs;
  FILE *fp = NULL;
  Loaded_LIST<string> list;

  fp = fopen("./filesnumbers.csv", "rb");

  fs.open("./filesnumbers.csv", ios::in);
  if (fp == NULL)
  {
    fprintf(stderr, "=======ERROR=======\n100\n===================\n");
    exit(1);
  }
  else
  {
    int i = 0;
    while (!fs.eof())
    {
      getline(fs, str_buf);;
      if (i==0)
      {
        string sub1=str_buf.substr(0,6);
        string sub0=str_buf.erase(0,7);
        list.insert(i, sub0, sub1);
      }
      else
      {
        string sub3 = str_buf.substr(0, 3);
        string sub2 = str_buf.erase(0, 4);
        list.insert(i, sub2, sub3);
      }
      i++;
    }
    list.print();
    fs.close();
  }
}
#include <iostream>
#include <cstring>
#include "manager.h"

using namespace std;
int main()
{
  Manager manager;
  while(1)
  {
  string input, command;
  cout<< "명령어를 입력해주세요\n";
  cin.clear();
  cin >> input >> command;
  if (command=="LOAD")
  {
    cout<<"==========LOAD=========="<<endl;
    manager.Load();
    cout<<"========================"<<endl;
  }
  else if (command=="ADD")
  {
    cout<<"===========ADD==========="<<endl;
    cout<<"========================"<<endl;
  }
  else if (command=="MODIFY")
  {
    cout<<"=========MODIFY========="<<endl;
    cout<<"========================"<<endl;
  }
  else if (command=="MOVE")
  {
    cout<<"==========MOVE=========="<<endl;
    cout<<"========================"<<endl;
  }
  else if (command=="PRINT")
  {
    cout<<"==========PRINT=========="<<endl;
    cout<<"========================"<<endl;
  }
  else if (command=="SEARCH")
  {
    cout<<"=========SEARCH========="<<endl;
    cout<<"========================"<<endl;
  }
  else if (command=="SELECT")
  {
    cout<<"SELECT"<<endl;
  }
  else if (command=="EDIT")
  {
    cout<<"EDIT"<<endl;
  }
  else if (command=="EXIT")
  {
    break;
  }
  else
  {
    cout<<"=======ERROR=======\n777\n===================\n";
  }
  }
}
#ifndef LIST_CPP
#define LIST_CPP
#include "list.h"

// 생성자
template<typename T>
Loaded_LIST<T>::Loaded_LIST()
:begin(0), count(0)
{
}
// 소멸자
template<typename T>
Loaded_LIST<T>::~Loaded_LIST()
{
  Loaded_LIST_Node<T>* del = begin;
  while(begin)
  {
    begin = begin->next;
    delete del;
    del = begin;
  }
}
// insert 멤버 함수
template<typename T>
void Loaded_LIST<T>::insert(int pos, const T& value_name, const T& value_num)
{
  Loaded_LIST_Node<T>* add = makeNode(value_name, value_num);    
  if(pos == 0)    
  {
    add->next = begin;
    begin = add;
  }
  else    
  {
    Loaded_LIST_Node<T>* cur = begin;
    for(int i = 1; i < pos; i++)
    {
      cur = cur->next;
    }
    add->next = cur->next;
    cur->next  = add;
  }
  count++;
}
// erase 멤버 함수
template<typename T>
void Loaded_LIST<T>::erase(int pos)
{
  if(pos == 0)    
  {
    Loaded_LIST_Node<T>* del = begin;  
    begin = begin->next;
    delete del;
  }
  else    
  {
    Loaded_LIST_Node<T>* cur = begin;
    for(int i = 0; i < pos - 1; i++)
    {
      cur = cur->next;
    }
    Loaded_LIST_Node <T>* del = cur->next;
    cur->next = cur->next->next;
    delete del;
  }
  count--;
}
// print 멤버 함수
template<typename T>    
void Loaded_LIST<T>::print() const
{
  Loaded_LIST_Node<T>* cur = begin;
  while(cur != 0)
  {
    string pname = cur->name;
    string pnum = cur->num;
    cout<<pname+'/'+pnum<<endl;
    cur = cur->next;
  }
  cout<<endl;
}
// makeNode 멤버 함수(private)
template<typename T>
Loaded_LIST_Node<T>* Loaded_LIST<T>::makeNode(const T& value_name, const T& value_num)
{
  Loaded_LIST_Node<T>* temp = new Loaded_LIST_Node<T>;
  temp->name = value_name;
  temp->num = value_num;
  temp->next = 0;
  return temp;
}
#endif

#ifndef LIST_H
#define LIST_H
#include <iostream>
#include <cassert>
using namespace std;

// Loaded_LIST_Node 클래스 선언
template<typename T>
class Loaded_LIST_Node
{
  public:
    T  name;
    T  num;
    Loaded_LIST_Node <T>* next;
};
// Loaded_LIST 클래스 선언
template <typename T>
class Loaded_LIST
{
  private:
    Loaded_LIST_Node <T>* begin;
    int count;
    Loaded_LIST_Node<T>* makeNode(const T& value_name, const T& value_num);
  public:
    Loaded_LIST();
    ~Loaded_LIST();
    void insert(int pos, const T& value_num, const T& value_name);
    void erase(int pos);
    void print() const;
};
#endif
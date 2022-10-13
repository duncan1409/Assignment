#ifndef BINARYSEARCHTREE_H
#define BINARYSEARCHTREE_H
#include <iostream>
#include <cassert>
using namespace std;

// Database_BST_Node 구조체 정의
template <class T>
class Database_BST_Node
{
public:
  T name;
  T num;
  Database_BST_Node<T> *left;
  Database_BST_Node<T> *right;
};
// Database_BST 클래스 정의
template <class T>
class Database_BST
{
private:
  Database_BST_Node<T> *root;
  int count;
  Database_BST_Node<T> *makeNode(const T& value_name, const T& value_num);
  void destroy(Database_BST_Node<T> *ptr);                      // 헬퍼 함수
  void insert(const T& value_name, const T& value_num, Database_BST_Node<T> *&ptr);      // 헬퍼 함수
  void inorder(Database_BST_Node<T> *ptr) const;                // 헬퍼 함수
  void preorder(Database_BST_Node<T> *ptr) const;               // 헬퍼 함수
  void postorder(Database_BST_Node<T> *ptr) const;              // 헬퍼 함수
  bool search(const T& value_name, const T& value_num, Database_BST_Node<T> *ptr) const; // 헬퍼 함수
public:
  Database_BST();
  ~Database_BST();
  void insert(const T& value_name, const T& value_num);
  void erase(const T& value_name, const T& value_num);
  bool search(const T& value_name, const T& value_num) const;
  void inorder() const;
  void preorder() const;
  void postorder() const;
  int size() const;
  bool empty() const;
};
#endif
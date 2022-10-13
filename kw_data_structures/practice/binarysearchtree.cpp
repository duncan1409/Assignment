#ifndef BINARYSEARCHTREE_CPP
#define BINARYSEARCHTREE_CPP
#include "binarysearchtree.h"

// 생성자
template<class T>
Database_BST<T>::Database_BST()
:root(0), count(0)
{
}
// 소멸자
template<class T>
Database_BST<T>::~Database_BST()
{
  destroy(root);
}
// insert 멤버 함수
template <class T>
void Database_BST<T>::insert(const T& value_name, const T& value_num)
{
  insert(value_name, value_num, root);
  count++;
}
// Search 멤버 함수
template<class T>
bool Database_BST<T>::search(const T& value_name, const T& value_num) const
{
  return search(value_name, value_num, root);
}
// pre-order 순회
template <class T>
void Database_BST<T>::preorder() const
{ 
  preorder(root);
}
// in-order 순회
template<class T>
void Database_BST<T>::inorder() const
{ 
  inorder(root);
}
// post-order 순회
template<class T>
void Database_BST<T>::postorder() const
{ 
  postorder(root);
}
// size 멤버 함수
template<class T>    
int Database_BST<T>::size() const
{
  return count;
}
// empty 멤버 함수
template<class T>    
bool Database_BST<T>::empty() const
{
  return (count == 0);
}
// 소멸자에서 활용하는 헬퍼 함수
template<class T>
void Database_BST<T>::destroy(Database_BST_Node <T>* ptr)
{
  if(!ptr)
  {
    return;
  }
  destroy(ptr->left);
  destroy(ptr->right);
  delete ptr;
}
// insert 함수에서 활용하는 헬퍼 함수
template<class T>
void Database_BST<T>::insert(const T& value_name, const T& value_num, Database_BST_Node <T>*& ptr)
{
  if(!ptr)
  {
    ptr = makeNode(value_name, value_num);
    return;
  }
  else if(value_name < ptr->name)
  {
    insert(value_name, value_num, ptr->left);
  }
  else 
  {
    insert(value_name, value_num, ptr->right);
  }
}
// preorder 함수에서 활용하는 헬퍼 함수
template <typename T>
void Database_BST<T>::preorder(Database_BST_Node<T>* ptr) const
{ 
  if(!ptr)
  {
    return;
  }
  cout << ptr->name << endl;
  cout << ptr->num << endl;
  preorder(ptr->left);
  preorder(ptr->right);
}
// inorder 함수에서 활용하는 헬퍼 함수
template<class T>
void Database_BST<T>::inorder(Database_BST_Node<T>* ptr) const
{ 
  if(!ptr)
  {
    return;
  }
  inorder(ptr->left);
  cout << ptr->name << endl;
  inorder(ptr->right);
}
// postorder 함수에서 활용하는 헬퍼 함수
template<class T>
void Database_BST<T>::postorder(Database_BST_Node <T>* ptr) const
{ 
  if(!ptr)
  {
    return;
  }
  postorder(ptr->right);
  postorder(ptr->left);
  cout << ptr -> name << endl;
}
// search 함수에서 활용하는 헬퍼 함수
template<typename T>
bool Database_BST<T>::search(const T& value_name, const T& value_num, Database_BST_Node<T>* ptr) const
{
  if(!ptr)
  {
    return false;
  }
  else if(ptr->name == value_name)
  {
    return true;
  }
  else if(value_name < ptr->name)
  {
    return search(value_name, value_num, ptr->left);
  }
  else
  {
    return search(value_name, value_num, ptr->right);
  }
}
// makeNode 함수에서 활용하는 헬퍼 함수
template<typename T>
Database_BST_Node<T>* Database_BST<T>::makeNode(const T& value_name, const T& value_num)
{
  Database_BST_Node<T>* temp = new Database_BST_Node<T>;
  temp->name = value_name;
  temp->num = value_num;
  temp->left = 0;
  temp->right = 0;
  return temp;
}
#endif
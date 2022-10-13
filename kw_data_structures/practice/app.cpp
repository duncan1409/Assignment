#include "binarySearchTree.cpp"

int main()
{
  // 이진 탐색 트리 생성 
  Database_BST <string> bct;
  // 6개의 노드 추가
  bct.insert("Michael", "100");
  bct.insert("Jane", "100");
  bct.insert("Sophie", "100");
  bct.insert("Thomas", "100");
  bct.insert("Rose", "100");
  bct.insert("Richard", "100");
  // pre-order 순회 출력
  cout << "pre-order 순회 출력" << endl;
  bct.preorder();
  cout << endl << endl;
  // in-order 순회 출력
  cout << "in-order 순회 출력" << endl;
  bct.inorder();
  cout << endl << endl;
  // post-order 순회 출력
  cout << "post-order 순회 출력" << endl;
  bct.postorder();
  cout << endl << endl;
  // 값 탐색
  cout << "탐색: " << endl;
  cout << "search('Sophie') = " << boolalpha;
  cout << bct.search("Sophie", "100") << endl;
  cout << "search('Mary') = " << boolalpha;
  cout << bct.search("Mary", "100") << endl;
  return 0;
}
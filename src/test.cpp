#include "../lib/LinkedList.hpp"
#include <iostream>

int main() {
  LinkedList<int> l;
  l.pushBack(1);
  l.pushBack(2);
  auto p = l.find(1);
  std::cout << p->data << std::endl;
  // auto p = l.begin();
  // while (p != l.end()) {
  //   std::cout << p->data << std::endl;
  //   p = p->next;
  // }
  return 0;
}

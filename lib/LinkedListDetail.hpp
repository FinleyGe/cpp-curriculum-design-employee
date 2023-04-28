#include "LinkedListTemplate.hpp"
template <typename T> LinkedList<T>::LinkedList() {
  head = new Node();
  tail = new Node();
  tail->prev = head;
  head->next = tail;
  tail->next = nullptr;
  head->prev = nullptr;
  size = 0;
}

template <typename T> LinkedList<T>::LinkedList(const LinkedList &list) {
  head = new Node();
  size = 0;
  Node *p = list.head->next;
  while (p != list.tail) {
    pushBack(p->data);
    p = p->next;
  }
}

template <typename T> LinkedList<T>::~LinkedList() {
  Node *p = head;
  while (p != nullptr) {
    Node *q = p->next;
    delete p;
    p = q;
  }
}

template <typename T> void LinkedList<T>::pushBack(T data) {
  Node *p = new Node(data);
  p->next = tail;
  p->prev = tail->prev;
  tail->prev->next = p;
  tail->prev = p;
  size++;
}

template <typename T> void LinkedList<T>::remove(T data) {
  Node *p = find(data);
  if (p == nullptr) {
    return;
  }
  p->prev->next = p->next;
  p->next->prev = p->prev;
  delete p;
  size--;
}

template <typename T>
typename LinkedList<T>::Node *LinkedList<T>::find(T data) const {
  Node *p = head->next;
  while (p != tail) {
    if (p->data == data) {
      return p;
    }
    p = p->next;
  }
  return nullptr;
}

template <typename T>
typename LinkedList<T>::Node *LinkedList<T>::begin() const {
  return head->next;
}

template <typename T> typename LinkedList<T>::Node *LinkedList<T>::end() const {
  return tail;
}

template <typename T> int LinkedList<T>::getSize() const { return size; }

#include "LinkedListTemplate.hpp"
template <typename T> LinkedList<T>::LinkedList(const LinkedList &list) {
  head = new Node();
  tail = new Node();
  head->next = tail;
  tail->prev = head;
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
    Node *q = p;
    p = p->next;
    delete q;
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
  Node *p = head->next;
  while (p != tail) {
    if (p->data == data) {
      p->prev->next = p->next;
      p->next->prev = p->prev;
      delete p;
      size--;
      return;
    }
    p = p->next;
  }
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

#pragma once
// just a simple double-direction linked list
template <typename T> class LinkedList {
public:
  struct Node { // the node of the linked list
    T data;
    Node *next;
    Node *prev;
    Node() : next(nullptr), prev(nullptr){}; // default constructor
    Node(T data) : data(data), next(nullptr), prev(nullptr){};
  };
  LinkedList();
  LinkedList(const LinkedList &);
  LinkedList &operator=(const LinkedList &);
  ~LinkedList();
  void pushBack(T);
  void remove(T);
  Node *find(T) const;
  Node *begin() const;
  Node *end() const;
  int getSize() const;

private:
  Node *head = new Node(); // the head of the linked list.
  Node *tail = new Node(); // the tail of the linked list.
  int size = 0;            // the size of the linked list.
};

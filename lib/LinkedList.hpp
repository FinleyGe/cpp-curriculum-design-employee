// just a simple double-direction linked list
template <typename T> class LinkedList {
private:
  struct Node { // the node of the linked list
    T data;
    Node *next;
    Node *prev;
    Node(T data) : data(data), next(nullptr), prev(nullptr){};
  };

  Node *head; // the head of the linked list.
  Node *tail; // the tail.
              // both of them are always empty.
  int size;   // the size of the linked list.

public:
  LinkedList() : head(nullptr), tail(nullptr), size(0){};
  LinkedList(const LinkedList &);
  LinkedList &operator=(const LinkedList &);
  ~LinkedList();
  void pushBack(T);
  void remove(T);
};

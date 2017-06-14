class Node<T> {
    T item;
    Node<T> nextItem;


    public Node(T item, Node<T> nextItem) {
        this.item = item;
        this.nextItem = nextItem;
    }
}

class Stack<T> {
    Node<T> head;

    void push (T item) {
        head = new Node<T>(item, head);
    }

    T pop() {
         Node<T> n = head;
         head = head.nextItem;
         return n.item;
    }
}
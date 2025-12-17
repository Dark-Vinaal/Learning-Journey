// SINGLE LINKED LIST

#include<iostream.h>
#include<conio.h>
#include<stdlib.h>
struct Node
{	
int num;
Node *next;
};
struct Node *head=NULL;
void insert_Node(int n)
{
struct Node *new_node=new Node;
new_node->num=n;
new_node->next=head;
head=new_node;
}
void delete_first_node()
{
if(head!=NULL)
{
Node* temp=head;
head=head->next;
free(temp);
}
}
void display_all_nodes()
{
struct Node *temp=head;
while(temp!=NULL)
{
cout<<temp->num<<" ";
temp=temp->next;
}
}
int main()
{
clrscr();
insert_Node(13);
insert_Node(11);
insert_Node(9);
insert_Node(7);
insert_Node(5);
insert_Node(3);
insert_Node(1);
cout<<"Original Linked List:\n";
display_all_nodes();
cout<<"\n\nDelete first node of Singly Linked List:\n";
delete_first_node();
display_all_nodes();
cout<<endl;
getch();
return 0;
}

// OUTPUT : 
/*
Original Linked List:
1  3  5  7  9  11  13

Delete first node of Singly Linked List:
3  5  7  9  11  13
*/

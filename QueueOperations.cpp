// Queue Operations

#include<iostream.h> 
#include<conio.h> 
#define size 3
class queue
{
int a[size],front,rear,x,i; 
public:
queue()
{ 
  front= 0;	
  rear = 0; 
} 
void insertQ(); 
voiddeleteQ();
void showQ();
};
void queue::insertQ()
{
  if(rear == size)
  cout<<"***** Queue is full****";
  else
  {
    cout<<"Enter the element:"; 
    cin>>x;
  a[rear++] = x;
  }
  }
void queue::deleteQ()
{
  if(front == rear)
    cout<<"***** Queue is empty ****";
  else
    a[front++];
}
void queue::showQ()
{
  for(i=front;i<rear;i++)
  cout<<"|"<<a[i]<<"|";
}
int main()
{
  intch; 
  queue q; 
  clrscr();
  cout<<"\t\tQUEUE OPERATIONS"<<endl; 
  do
  {
    cout<<"\n1. INSERT \n2. DELETE\n3. SHOW\n4. EXIT\n";
    cout<<"Enter the Choice:"; 
    cin>>ch;
    switch(ch)
    {
      case 1:
        q.insertQ(); 
        break;
      case 2:
        q.deleteQ(); 
        break;
      case 3:
        q.showQ(); 
        break;
      case 4:
        exit(0); 
      default:
        cout<<"Invalid Operation";
    }
  }while(ch<=4); 
  return 0;
}

// Output:

/* 
1.	INSERT
2.	DELETE
3.	SHOW
4.	EXIT
 

QUEUE OPERATIONS
 
Enter the Choice:1 Enter the Element :10

1.	INSERT
2.	DELETE
3.	SHOW
4.	EXI T
Enter the Choice:1 Enter the Element :20

1.	INSERT
2.	DELETE
3.	SHOW
4.	EXIT
Enter the Choice:1 Enter the Element :30

1.	INSERT
2.	DELETE
3.	SHOW
4.	EXIT
Enter the Choice:1
*****Queue is Full*****

1.	INSERT
2.	DELETE
3.	SHOW
4.	EXIT
Enter the Choice:3
||10|| ||20|| ||30||

1.	INSERT
2.	DELETE
3.	SHOW
4.	EXIT
Enter the Choice:2
 
1.	INSERT
2.	DELETE
3.	SHOW
4.	EXIT
Enter the Choice:3
||20|| ||30||

1.	INSERT
2.	DELETE
3.	SHOW
4.	EXIT
Enter the Choice:2

1.	INSERT
2.	DELETE
3.	SHOW
4.	EXIT
Enter the Choice:2

1.	INSERT
2.	DELETE
3.	SHOW
4.	EXIT
Enter the Choice:3
||30||

1.	INSERT
2.	DELETE
3.	SHOW
4.	EXIT
Enter the Choice:2

1.	INSERT
2.	DELETE
3.	SHOW
4.	EXIT
Enter the Choice:2

*****Queue is Empty*****
1.	INSERT
2.	DELETE
3.	SHOW
4.	EXIT
Enter the Choice:6 Invalid Operation */

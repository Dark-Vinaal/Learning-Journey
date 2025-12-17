//Stack Operations 

#include<iostream.h>
#include<conio.h>
#define size 3
class stack
{
int a[size],top,x,i; public: stack()
{
top = 0;
}
void push(); void pop(); void show();
};
void stack::push()
{
if(top==size)
cout<<"***** Stack is full *****";
else
`	{
 cout<<"Enter the Element";
 cin>>x; 
a[top++] = x;
}
}
void stack::pop()
{
if(top == 0)
cout<<"***** Stack is empty *****"<<endl; 
else
}
void stack::show()
{
if(top == 0)
cout<<"***** Stack is empty *****"; else
{
for(i=top-1;i>=0;i--) cout<<"|"<<a[i]<<"|"<<endl;
}
}
int main()
{
intch; stack s; clrscr();
cout<<"\tSTACK OPERATION"<<endl; do
{
cout<<"\n1. PUSH\n2. POP\n3. SHOW\n4. EXIT\n"; cout<<"Enter the Choice:";
cin>>ch; switch(ch)
{
case 1:
s.push(); break;
case 2:
s.pop(); break;
case 3:
s.show(); break;
case 4:
exit(0); default:
cout<<"Invalid Operation";
}
}while(ch<=4); return 0;
}

// Output:

/* STACK OPERATION
1.	PUSH
2.	POP
3.	SHOW
4.	EXIT
Enter the Choice:1 Enter the Elements: 100

1.	PUSH
2.	POP
3.	SHOW
4.	EXIT
Enter the Choice:1 Enter the Elements: 200

1.	PUSH
2.	POP
3.	SHOW
4.	EXIT
Enter the Choice:1 Enter the Elements: 300

1.	PUSH
2.	POP
3.	SHOW
4.	EXIT
Enter the Choice:1
***** Stack is Full *****

1.	PUSH
2.	POP
3.	SHOW
4.	EXIT
Enter the Choice:3
|300|
|200|
|100|

1.	PUSH
2.	POP
3.	SHOW
4.	EXIT

Enter the Choice:2

1.	PUSH
2.	POP
3.	SHOW
4.	EXIT
Enter the Choice:3
|200|
|100|

1.	PUSH
2.	POP
3.	SHOW
4.	EXIT
Enter the Choice:2

1.	PUSH
2.	POP
3.	SHOW
4.	EXIT
Enter the Choice:3
|100|

1.	PUSH
2.	POP
3.	SHOW
4.	EXIT
Enter the Choice:2

1.	PUSH
2.	POP
3.	SHOW
4.	EXIT
Enter the Choice:2
***** Stack is Empty *****

1.	PUSH
2.	POP
3.	SHOW
4.	EXIT
Enter the Choice:5 Invalid Operation. */

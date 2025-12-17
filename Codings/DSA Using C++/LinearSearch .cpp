//Linear Search or Sequential Search 

#include<iostream.h> 
#include<conio.h>
int main()
{
int a[10],i,n,element; charch;
clrscr();
cout<<"\t\t LINEAR SEARCH PROGRAM\n";
cout<<"\nEnter the number of Terms :\t"; cin>>n;
cout<<"Enter the Elements:"<<endl; for(i=0;i<n;i++)
{
cin>>a[i];
}
do
{
cout<<"\nEnter the Element for Linear search:"; cin>>element;
for(i=0;i<n;i++)
{
if(a[i]==element)
{
break;
}
}
cout<<"\n"<<element<<" is Found at Position” <<i+1;
if(i==n-1)
cout<<element<<" is Not Found.\n";
cout<<"Do you want to continue(Y/N): "; cin>>ch;
}while(ch=='y'|| ch == 'Y'); return 0;
}

// Output:
/* LINEAR SEARCH PROGRAM

Enter the Number of Terms :	5
Enter the Elements:
34
97
56
3
28
Enter the element for Linear Search: 56 56 is Found at Position 3
Do you want to continue(Y/N): y
Enter the element for Linear Search : 28 28 is Found at Position 5
Do you want to continue(Y/N): y

Enter the elements for Linear Search :96 96 is Not Found.
Do you want to continue(Y/N):n
*/

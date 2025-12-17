//Binary Search 

#include<iostream.h> 
#include<conio.h> 
void main()
{
int a[10],i,n,mid,first,last,element; charch;
clrscr();
cout<<"\t\t BINARY SEARCH PROGRAM\n";
cout<<"\n\n Enter the Number of Terms :\t"; cin>>n;
cout<<"Enter the Elements(In Ascending Order):"<<endl; for(i=0;i<n;i++)
{
cin>>a[i];
}
do
{
  cout<<"\nEnter the Element to search:"; 
  cin>>element;
  first = 0; 
  last = n;
  while(first <= last)
  {
    mid = (first+last)/2; 
    if(a[mid] == element)
    {
      cout<<"\n"<<element<<" is found in Position:"<<mid+1; 
      break;
    }
    else if(a[mid] < element)
      first = mid+1;
    else
      last = mid-1;
  }
if(first>last)
cout<<"\nSearching Element :"<<element<<" is not cout<<found"<<endl;
cout<<"\nDo you want to continue(Y/N): ";
cin>>ch;
}while(ch=='y'|| ch == 'Y');
}

// Output:
/*
BINARY SEARCH PROGRAM
Enter the Number of Terms :	5
Enter the Elements( in Ascending Order):
11
12
13
14
15
Enter the Element to Search: 11 11 is Found at Position 1
Do you want to continue(Y/N): y
Enter the Element to be Search :28 15 is Found at Position 5
Do you want to continue(Y/N): y

Enter the Element to be Search :45 45 is Not Found.
Do you want to continue(Y/N): n
*/

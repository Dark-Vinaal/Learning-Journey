//Bubble Sort 

#include <iostream.h> 
#include<conio.h>
int main()
{
int a[10],n,i,j,t; 
clrscr();
cout<< "\t\tBUBBLE SORTING\n"; 
cout<<"\nEnter the number of Terms:"; 
cin>>n;
cout<< "\nEnter the Elements: " << endl; 
for (i = 0; i < n; i++)
  cin>> a[i]; 
for (i = 1; i < n; i++)
{
  for (j = 0; j < n-1; j++)
  {
    if (a[j] >a[j + 1])
    {
      t = a[j];
      a[j] = a[j + 1]; 
      a[j + 1] = t;
    }
  }
}
cout<< "\n\nAFTERBUBBLE SORTING :";
for (i = 0; i < n; i++)
cout<<"\t"<< a[i]; getch();
return 0;
}

// Output:
/* BUBBLE SORTING

Enter the Number of Terms : 5

Enter the Elements :
46
2
87
35
71

AFTER BUBBLE SORTING :2	35	46	71	87
*/

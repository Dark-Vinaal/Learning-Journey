//Quick Sort

#include iostream.h> #include<conio.h>
void quick_sort(int, int); int a[10];
void main()
{
Int i,n; clrscr();
cout<< "QUICK SORT\n";
cout<< "\nEnter the Number of Terms"; cin>>n;
cout<<"\nEnter the Elements for Sorting : " << endl; for (i = 0; i < n; i++)
cin>> a[i];
cout<< "\nYour Data	:"; for (i = 0; i < n; i++)
cout<< "\t" << a[i]; quick_sort(0, n - 1);
cout<< "\n\nSorted Data :"; for (i = 0; i < n; i++)
cout<< "\t" << a[i]; getch();
}
void quick_sort(int f, int l)
{
int i, j, t, p = 0; 
if (f < l)
{
p = f; i = f; j = l;
while (i < j)
{
while (a[i] <= a[p] && i < l) i++;
while (a[j] > a[p]) j--;
if (i < j)
{
t=a[i]; a[i] = a[j]; a[j] = t
}
t=a[p];  
 a[p] = a[j]; a[j]=t;
quick_sort(f, j - 1); quick_sort(j + 1, l);
}
}

// Output:
/* QUICK SORTING

Enter the Number of Terms 	5			
Enter the Elements :				
32				
11				
56				
73				
24				
Your Data	:	32	11	56	73	24
Sorted Data	:	11	24	32	56	73
*/

// Merge two arrays 

#include<iostream.h> #include<conio.h> void main()
{
int a[50],b[50],size1,size2,size,i,j,k,merge[100]; clrscr();
cout<<"\n\t\tMerge Two Array\n"; cout<<"\nEnter the Array1 size: "; cin>>size1;
cout<<"\nEnter Array1 elements : "; for(i=0;i<size1;i++)
cin>>a[i]; cout<<"\nEnter Array2 size: ";
cin>>size2;
cout<<"\nEnter Array2 elements: "; for(j=0;j<size2;j++)
cin>>b[j]; for(i=0;i<size1;i++)
{
merge[i]=a[i];
}
size=size1+size2;
for(i=0,k=size1; k<size && i<size2; i++,k++)
{
merge[k]=b[i];
}
cout<<"\nThe Array after merging "; for(i=0;i<size;i++)
cout<<"\n"<<merge[i]; getch();
}

//Output:

/* MERGE TWO ARRAYS

Enter the Array1 size :5

Enter Array1 Elements:
44
32
17
63
56
Enter the Array2 size :3 Enter Array2 Elements:
21
76

The Array after Merging
44
32
17
63
56
89
21
76 */

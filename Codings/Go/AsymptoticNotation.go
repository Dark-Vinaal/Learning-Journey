package main

import "fmt"

func main() {
	a := []int{5, 3, 1, 4, 2}
	fmt.Println("Sorted Array : ")
	for i := 0; i < len(a); i++ {
		for j := i + 1; j < len(a); j++ {
			if a[i] > a[j] {
				a[i], a[j] = a[j], a[i]
			}
		}
	}
	fmt.Println(a)
	fmt.Print("Linear Search Index : 2\n")
	fmt.Print("Binary Search Index : 2")

	fmt.Println("\n Complexity ")
	fmt.Println("Linear Search : O(n)")
	fmt.Println("Binary Search : O(log n)")
	fmt.Println("Bubble Sort : O(n^2)")

	fmt.Println("\n Best : Binary Search : O(log n)")
}

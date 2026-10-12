package main

import "fmt"

func recursiveFib(n int) int {
	if n <= 1 {
		return n
	}
	return recursiveFib(n-1) + recursiveFib(n-2)
}

func iterativeFib(n int) int {
	if n <= 1 {
		return n
	}
	a, b := 0, 1
	for i := 2; i <= n; i++ {
		c := a + b
		a = b
		b = c
	}
	return b
}

func main() {
	var n int
	fmt.Print("Enter the value of n :")
	fmt.Scan(&n)
	fmt.Println("Recursive Fibonacci =", recursiveFib(n))
	fmt.Println("Non-Recursive Fibonacci =", iterativeFib(n))
	fmt.Println("\nComparison:")
	fmt.Println("Recursive Method")
	fmt.Println("Time Complexity : O(2^n)")
	fmt.Println("Space Complexity: O(n)")
	fmt.Println("\nNon-Recursive Method")
	fmt.Println("Time Complexity : O(n)")
	fmt.Println("Space Complexity: O(1)")
	fmt.Println("\nBetter Method: Non-Recursive")
	fmt.Println("Reason: It is faster and uses less memory.")
}

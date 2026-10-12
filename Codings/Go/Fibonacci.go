package main

import "fmt"

func main() {

	var n int

	fmt.Print("Enter the Number of Terms : ")
	fmt.Scan(&n)

	a, b := 0, 1

	if n <= 0 {
		fmt.Println("Please enter a positive integer.")
	} else {
		fmt.Println("Fibonacci Series... ")

		for i := 1; i <= n; i++ {

			fmt.Print(a, " ")

			next := a + b
			a = b
			b = next
		}

		fmt.Println()
		
	}
}

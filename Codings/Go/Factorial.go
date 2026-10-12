package main

import "fmt"

func factorial(n int) int {

	if n == 0 || n == 1 {
		return 1
	}
	return n * factorial(n-1)
}

func main() {

	var num int

	fmt.Print("Enter a Number : ")
	fmt.Scan(&num)

	if num < 0 {
		fmt.Println("Factorial is not defined for negative numbers.")
	} else {
		fmt.Printf("Factorial of %d is %d\n", num, factorial(num))
	}
}

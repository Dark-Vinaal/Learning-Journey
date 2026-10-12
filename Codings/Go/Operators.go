package main

import "fmt"

func main() {

	a := 10
	b := 5

	// Arithmetic Operators
	fmt.Println("Arithmetic Operations")
	fmt.Println("a + b =", a+b)
	fmt.Println("a - b =", a-b)
	fmt.Println("a * b =", a*b)
	fmt.Println("a / b =", a/b)
	fmt.Println("a % b =", a%b)

	// Relational Operators
	fmt.Println("\nRelational Operations")
	fmt.Println("a == b :", a == b)
	fmt.Println("a != b :", a != b)
	fmt.Println("a > b :", a > b)
	fmt.Println("a < b :", a < b)
	fmt.Println("a >= b :", a >= b)
	fmt.Println("a <= b :", a <= b)

	// Logical Operators
	x := true
	y := false
	fmt.Println("\nLogical Operations")
	fmt.Println("x && y :", x && y)
	fmt.Println("x || y :", x || y)
	fmt.Println("!x:", !x)
	fmt.Println("!y:", !y)

}

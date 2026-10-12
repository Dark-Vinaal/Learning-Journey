package main

import "fmt"

func main() {

	var name string
	var age int
	var height float64
	var isStudent bool

	fmt.Print("Enter the Name : ")
	fmt.Scan(&name)

	fmt.Print("Enter the Age : ")
	fmt.Scan(&age)

	fmt.Print("Enter your Height (in meters) : ")
	fmt.Scan(&height)

	fmt.Print("Are you a Student? (true/false) : ")
	fmt.Scan(&isStudent)

	fmt.Println("----- User Details -----")
	fmt.Println(" Name : ", name)
	fmt.Println(" Age : ", age)
	fmt.Println(" Height : ", height)
	fmt.Println(" Student : ", isStudent)

	fmt.Println("----- Type of the Date -----")
	fmt.Printf(" Type of Name : %T\n", name)
	fmt.Printf(" Type of Age : %T\n", age)
	fmt.Printf(" Type of Height : %T\n", height)
	fmt.Printf(" Type of isStudent : %T\n", isStudent)

}

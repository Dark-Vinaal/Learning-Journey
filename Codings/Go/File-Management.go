package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {

	reader := bufio.NewReader(os.Stdin)

	fmt.Print("Enter File Name: ")
	name, _ := reader.ReadString('\n')

	fmt.Print("Enter The Content : ")
	content, _ := reader.ReadString('\n')

	file, _ := os.Create(name)
	fmt.Println("File Created Successfully")

	file.WriteString(content)
	file.Close()

	fmt.Println("Content Written Successfully")

}

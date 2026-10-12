package main

import "fmt"

func worker(id int, ch chan string) {
	ch <- fmt.Sprintf("Message from process %d", id)
}

func main() {
	ch := make(chan string)

	for i := 1; i <= 3; i++ {
		go worker(i, ch)
	}

	for i := 1; i <= 3; i++ {
		fmt.Println(<-ch)
	}

	fmt.Println("All processes completed")
}

package main

import "fmt"

func main() {

	var n int

	fmt.Println("Enter the number of pages: ")
	fmt.Scan(&n)

	pages := []int{2, 6, 5}
	c := 3
	f := []int{}
	faults := 0

	fmt.Println("Page Replacement using FIFO Algorithm")

	for _, p := range pages[:n] {
		found := false
		for _, x := range f {
			if p == x {
				found = true
			}
		}
		if found {
			if len(f) == c {
				f = f[1:]
			}
			f = append(f, p)
			faults++
		}

		fmt.Println("Pages", p, "-> Frames", f)
	}

	fmt.Println("Total Page Faults: ", faults)
}

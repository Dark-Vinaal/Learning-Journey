package main

import "fmt"

func main() {
	a := []int{1, 3, 4, 5}
	b := []int{1, 4, 5, 7}
	c := make([]int, 8)

	for i := 0; i < 4; i++ {
		for j := 7; j >= a[i]; j-- {
			if c[j-a[i]]+b[i] > c[j] {
				c[j] = c[j-a[i]] + b[i]
			}
		}
	}
	fmt.Println("Maximum Profit is : ", c[7])
}

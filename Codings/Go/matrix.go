package main

import "fmt"

func main() {
	a := [2][2]int{{1, 2}, {3, 4}}
	b := [2][2]int{{5, 6}, {7, 8}}
	var c [2][2]int

	for i := 0; i < 2; i++ {
		for j := 0; j < 2; j++ {
			c[i][j] = a[i][0]*b[0][j] + a[i][1]*b[1][j]
			fmt.Print(c[i][j], " ")
		}
		fmt.Println()
	}
}

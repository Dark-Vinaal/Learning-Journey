package main

import "fmt"

func merge(a []int) []int {
	if len(a) < 2 {
		return a
	}
	m := len(a) / 2
	l, r := merge(a[:m]), merge(a[m:])
	x := []int{}
	for len(l) > 0 && len(r) > 0 {
		if l[0] < r[0] {
			x = append(x, l[0])
			l = l[1:]
		} else {
			x = append(x, r[0])
			r = r[1:]
		}
	}
	return append(x, append(l, r...)...)
}

func quick(a []int) []int {
	if len(a) < 2 {
		return a
	}
	p := a[len(a)-1]
	l, r := []int{}, []int{}
	for _, x := range a[:len(a)-1] {
		if x < p {
			l = append(l, x)
		} else {
			r = append(r, x)
		}
	}
	return append(append(quick(l), p), quick(r)...)
}

func main() {
	a := []int{5, 3, 1, 4, 2}
	fmt.Println("Merge Sorted Array:", merge(a))
	fmt.Println("Quick Sorted Array:", quick(a))
}

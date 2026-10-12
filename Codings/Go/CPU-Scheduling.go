package main
import "fmt"

func main() {
	bt := []int{4, 5, 6}
	q := 3

	fmt.Println("--- FCFS ---")
	t := 0
	for i, b := range bt {
		fmt.Printf("P%d -> WT:%d TAT:%d\n", i+1, t, t+b)
		t += b
	}

	fmt.Println("\n--- Round Robin ---")
	r := append([]int{}, bt...)
	t = 0
	for {
		done := true
		for i := range r {
			if r[i] > 0 {
				done = false
				x := q
				if r[i] < q { x = r[i] }
				t += x
				r[i] -= x
				if r[i] == 0 {
					fmt.Printf("P%d completed at %d\n", i+1, t)
				}
			}
		}
		if done { break }
	}
}
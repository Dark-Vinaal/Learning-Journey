package main

import "fmt"

type Student struct {
	Name  string
	Roll  int
	Marks [3]int
}

func main() {

	std := Student{

		Name:  "Dark",
		Roll:  101,
		Marks: [3]int{90, 95, 99},
	}

	fmt.Println("Student Details")
	fmt.Println("Name : ", std.Name)
	fmt.Println("Roll : ", std.Roll)

	fmt.Println("\nMarks (Arrays) ")
	for i := 0; i < len(std.Marks); i++ {
		fmt.Printf("Subject %d : %d\n", i+1, std.Marks[i])
	}

	fmt.Println()

	subjects := []string{"AI/ML,", "Data Science,", "Cloud Computing,"}
	subjects = append(subjects, "Cyber Security")
	fmt.Println("Subjects (Slice) : ", subjects)

	grades := map[string]string{
		"AI/ML":           "A",
		"Data Science":    "A+",
		"Cloud Computing": "B+",
		"Cyber Security":  "A",
	}

	fmt.Println("\nGrades (Map) ")
	for subject, grades := range grades {
		fmt.Println(subject, " : ", grades)
	}
}

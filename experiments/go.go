package main

import (
	"fmt"
	"math"
	"time"
)

type Person struct {
	Name   string `json:"name"`
	Age    int    `json:"age"`
	Job    string `json:"job"`
	Salary int    `json:"salary"`
}

func (p Person) DisplayInfo() {
	fmt.Printf("Name: %s\n", p.Name)
	fmt.Printf("Age: %d\n", p.Age)
	fmt.Printf("Job: %s\n", p.Job)
	fmt.Printf("Salary: %d\n", p.Salary)
}

func averageSalary(salaries ...int) float64 {
	var total int
	for _, salary := range salaries {
		total += salary
	}
	return float64(total) / float64(len(salaries))
}

func main() {
	var pers1 Person
	var pers2 Person

	pers1 = Person{
		Name:   "Hege",
		Age:    45,
		Job:    "Teacher",
		Salary: 6000,
	}

	pers2 = Person{
		Name:   "Cecilie",
		Age:    24,
		Job:    "Marketing",
		Salary: 4500,
	}

	fmt.Println("Person 1 Information:")
	pers1.DisplayInfo()

	fmt.Println("\nPerson 2 Information:")
	pers2.DisplayInfo()

	avgSalary := averageSalary(pers1.Salary, pers2.Salary)
	fmt.Printf("\nAverage Salary: %.2f\n", avgSalary)

	now := time.Now()
	fmt.Printf("\nCurrent Time: %s\n", now.Format(time.RFC3339))

	sqrtVal := math.Sqrt(16)
	fmt.Printf("\nSquare root of 16 is: %.2f\n", sqrtVal)

	add := func(a, b int) int {
		return a + b
	}
	fmt.Printf("\nSum of 10 and 20 is: %d\n", add(10, 20))

	numbers := []int{1, 2, 3, 4, 5}
	fmt.Println("\nNumbers slice:")
	for _, num := range numbers {
		fmt.Printf("%d ", num)
	}
	fmt.Println()

	personMap := map[string]Person{
		"p1": pers1,
		"p2": pers2,
	}
	fmt.Println("\nPerson Map:")
	for key, person := range personMap {
		fmt.Printf("%s: %s, Age %d\n", key, person.Name, person.Age)
	}
}

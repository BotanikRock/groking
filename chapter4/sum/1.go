package main

import "fmt"

func sum(list []int) int {
	head, tail := list[0], list[1:len(list)]

	if len(list) == 0 {
		return 0
	}

	if len(tail) == 0 {
		return head
	}

	return head + sum(tail)
}

func main() {
	fmt.Println(sum([]int{2, 4, 6}))
}

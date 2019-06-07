package main

import (
	"fmt"
)

func quickSort(list []int) []int {
	length := len(list)

	if length < 2 {
		return list
	}

	pivotIndex := length / 2
	pivot := list[pivotIndex]

	newList := append(list[:pivotIndex], list[pivotIndex+1:]...)

	lesser := []int{}
	greater := []int{}

	for _, x := range newList {
		if x <= pivot {
			lesser = append(lesser, x)
		} else {
			greater = append(greater, x)
		}
	}

	result := []int{}

	result = append(result, quickSort(lesser)...)
	result = append(result, pivot)
	result = append(result, quickSort(greater)...)

	return result
}

func main() {
	fmt.Println(quickSort([]int{10, 5, 2, -15, 2, 3, -10, 7}))
}

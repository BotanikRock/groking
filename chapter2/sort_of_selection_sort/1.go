package main

import "fmt"

func findSmallest(arr []int) int {
	smallestIndex := 0
	smallest := arr[smallestIndex]

	arrLength := len(arr)

	for i := 1; i < arrLength; i++ {
		if arr[i] < smallest {
			smallest = arr[i]
			smallestIndex = i
		}
	}

	return smallestIndex
}

func selectionSort(arr []int) []int {
	arrLength := len(arr)

	sortedArr := make([]int, arrLength)

	for i := 0; i < arrLength; i++ {
		smallestIndex := findSmallest(arr)
		sortedArr[i] = arr[smallestIndex]

		arr = append(arr[:smallestIndex], arr[smallestIndex+1:]...)
	}

	return sortedArr
}

func main() {
	fmt.Println(selectionSort([]int{5, 3, 6, 2, 10}))
}

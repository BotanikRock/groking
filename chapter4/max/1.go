package main

import "fmt"

func max(list []int) int {
	length := len(list)

	var maxNum int

	if length < 2 {
		return list[0]
	}

	if length == 2 {
		maxNum = list[1]
	} else {
		maxNum = max(list[1:length])
	}

	if list[0] < maxNum {
		return maxNum
	} else {
		return list[0]
	}
}

func main() {
	fmt.Println(max([]int{100, 1203, 0, -10, 20, 8, 145}))
}

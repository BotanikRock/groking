package main

import "fmt"

// len... ¯\_(ツ)_/¯
func sum(list []interface{}) int {
	if len(list) < 1 {
		return 0
	}

	return 1 + sum(list[1:len(list)])
}

func main() {
	fmt.Println(sum([]interface{}{0, 0, 0, 0, 0, "fsdfsdf"}))
}

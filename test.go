package main

import "C"

//export Add_Int32
func Add_Int32(a, b int) int {
	return a + b
}

//export Add_Float64
func Add_Float64(a, b float64) float64 {
    return a + b
}

func main() {
}

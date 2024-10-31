package test

import "core:fmt"
print :: fmt.println

main :: proc() {

	print(findMissing([]int{3, 0, 1}))
	print(findMissing([]int{10, 5, 8, 6, 9, 12, 7}))
	print(findMissing([]int{200, 199, 202}))

	// OUTPUT:
	// 2
	// 11
	// 201
}


findMissing :: proc(l: []int) -> int {
	local_array := l
	sort(local_array[:])
	missing_num := 0
	for i in 1 ..< len(local_array) {
		if local_array[i] != local_array[i - 1] + 1 {
			missing_num = local_array[i - 1] + 1
		}
	}
	return missing_num
}

# this algorithms works like selection algortihm but instead just change the smallest value
# also change the bigger in the same time, after every loop update the start point in the next
# item and reduce the last point on a one position
def my_algorithm(_input)
	_array = Array.new(_input)

	i = 0
	start = 0
	endps = _array.length - 1
	min = 0
	max = endps

	while i <= endps
		min = i if _array[i] < _array[min]
		max = i if _array[i] > _array[max]
		i += 1

		if (i-1) == endps
			aux = _array[min]
			_array[min] = _array[start]
			_array[start] = aux

			max = min if max == start
			aux = _array[max]
			_array[max] = _array[endps]
			_array[endps] = aux

			start += 1
			endps -= 1
			i = start
			min = start
			max = endps
		end
		
	end
	return _array
end

# test_case = [3,6,12,4,2,-1,0,20,10,8,7,3,1,0,4,5,-23,2,3-2,-1,9,4,2,1,-0,5,19,4,99,2,-1,102,114,120,128,131,233,-123,199,999,-231,0,1,-45,763,-132,987,-132,831,-672, 1200, 56, 013, -23, 90, 921, -2, 100]
# test_case = [3,6,12,4,2,-1,0,20,10,8,7,3,1,0,4,5,-23,2,1,3,4]
# test_case = [1,3,2,-1,0,5,6,4]
# test_case = [1,3,2]

# p ordenado_mio = my_algorithm(test_case)
# p ordenado_pc = test_case.sort

# p ordenado_mio == ordenado_pc


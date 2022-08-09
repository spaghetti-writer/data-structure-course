# this algorithm compares the current number in loop versus all his next neighbours
# then takes the smallest number (if theres one) and change its position

def selection_sort(input)
	_array = Array.new(input)
	run = true
	advance = 0
	a_loop = 0
	a_length = _array.length - 1

	while run
		run = false
		do_change = false
		a_loop = 0
		min = _array[advance]
		max = _array[advance]
		min_index = advance
		max_index = advance

		for i in advance..a_length do
			a_loop += 1
			if _array[i] > max
				max = _array[i]
				max_index = i
			end
			if _array[i] < min
				do_change = true
				min = _array[i]
				min_index = i
			end
			if _array[i] < max && i > max_index
				run = true
			end
		end

		if do_change
			aux = _array[advance]
			_array[advance] = min
			_array[min_index] = aux
		end

		advance += 1
	end

	return _array 
end

def selection_sort_iv(input)
	_array = Array.new(input)
	a_length = _array.length - 1
	for i in 0..a_length do
		min_index = i
		for j in i..a_length do
			min_index = j if _array[j] < _array[min_index]
		end
		aux = _array[i]
		_array[i] = _array[min_index]
		_array[min_index] = aux
	end
	return _array
end

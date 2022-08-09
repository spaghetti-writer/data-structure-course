# this algorithm compares the current number in loop versus his next neighbour 
# and change positions if is the current number is bigger

def bubble_sort(input)
	_array = Array.new(input)
	run = true
	advance = 1
	a_length = _array.length - 1

	while run
		run = false
		counter = 0
		for i in 0..(a_length-advance) do
			counter += 1
			aux = _array[i]
			if aux > _array[i+1]
				run = true
				_array[i] = _array[i+1]
				_array[i+1] = aux
			end
		end
		advance += 1
	end		
	return _array
end
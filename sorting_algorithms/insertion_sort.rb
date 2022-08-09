# this algortihm does an loop to the rigth -> and other to the left <- this start on the current item of first loop
# the second loop checks the previous values with the current item in the loop to the rigth (first loop)
# then insert the smallest values in the correct position (if the value is bigger than all prevs doesnt do anythging)
def insertion_sort(input)
	_array = Array.new(input)
	for i in 1..(_array.length-1) do
		j = i-1
		index_aux = i

		while j >= 0
			break if _array[index_aux] >= _array[j]

			if _array[index_aux] < _array[j]
				aux = _array[index_aux]
				_array[index_aux] = _array[j]
				_array[j] = aux
				index_aux = j
			end
			j -= 1 
		end

	end

	return _array
end

def insertion_sort_iv(input)
	_array = Array.new(input)

	for i in 1..(_array.length-1) do
		aux = _array[i]
		j = i - 1
		
		while j >= 0 && _array[j] > aux
			_array[j+1] = _array[j]
			j -= 1
		end

		_array[j+1] = aux

	end
	
	return _array
end

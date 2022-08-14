def byJJ(_input)
	_array = Array.new(_input);
	a_length = _array.length;
	posFinal = a_length - 1;
	posMin = nil;
	posMax = nil;

	for i in 0..(a_length/2) do
		posMin = i;
		posMax = i;
		for j in i..posFinal do
			posMin = j if _array[j] < _array[posMin]
			posMax = j if _array[j] > _array[posMax]
		end

		aux = _array[posMin]
		_array[posMin] = _array[i]
		_array[i] = aux

		posMax = posMin if posMax == i

		aux = _array[posFinal]
		_array[posFinal] = _array[posMax]
		_array[posMax] = aux

		posFinal -= 1;
	end

	return _array
end

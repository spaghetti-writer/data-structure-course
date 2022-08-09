def solution(_array)
	a_length = _array.length
	min = _array[0]
	max = _array[0]
	suma = _array[0]

	for i in 1..(a_length-1) do
		n = _array[i]
		suma += n
		min = n if n < min
		max = n if n > max
	end

	puts "Minimo: #{min}"
	puts "Maximo: #{max}"
	puts "Longitud: #{a_length}"
	puts "Suma: #{suma}"
	puts "Promedio: #{suma/a_length.to_f}"
end

# test case
solution([3,5,4,2,6,7,5,9,3,4,0,4,2,12,1,6,8])
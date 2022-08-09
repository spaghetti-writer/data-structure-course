def solution(a)
	return -1 if a.uniq.length == a.length

	helper = {}
	a.each do |e|
		return e if helper[e]
		helper[e] = e
	end
end

solution( [2, 1, 3, 5, 3, 2] );
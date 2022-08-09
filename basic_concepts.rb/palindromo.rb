def solution(string)
	s_length = string.length
	for i in 0..(s_length/2) do 
		if string[i].downcase != string[s_length - 1 - i].downcase
			return false
		end
	end
	return true
end

p solution("Analavalana")
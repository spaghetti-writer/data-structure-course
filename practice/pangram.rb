def solution(string)
	letters = ('a'..'z').to_a
	helper = Hash.new()
	string.scan(/[a-zA-Z]/).each { |e| helper[e.downcase] = e}

	letters.length == helper.length
end

p solution("A wizard’s job is to vex chumps qucikly in fog.")
def solution(s)
	helper = Hash.new(0)
	s.chars.each { |e| helper[e] += 1 }
	firts_uniq = helper.detect { |k,v| v == 1 }
	firts_uniq.nil? ? "_" : firts_uniq[0]
end

p solution("abacabaabacaba")
p solution("abcba")
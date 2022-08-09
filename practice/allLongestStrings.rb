def solution(inputArray)
	w_length = inputArray[0].length

	inputArray.each { |e| w_length = e.length if e.length > w_length }

	inputArray.select { |e| e.length == w_length }
end

p solution(["aba", 
 "aa", 
 "ad", 
 "vcd", 
 "aba"])

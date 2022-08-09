=begin
def solution(sequence)
	sequence_length = sequence.length
	return true if sequence_length <= 2
	removes = 0
	i = 1
	nprev = sequence[0]
	nnext = sequence[2]
	
	while i < sequence_length
		increment = true
		ncurrent = sequence[i]

		p sequence
		p "#{nprev}, #{ncurrent}, #{nnext}"
		if ncurrent <= nprev || nnext <= ncurrent
			removes += 1
			index = i
			if !sequence[i+2].nil?
				return false if sequence[i+2] <= ncurrent && sequence[i+2] <= nprev

				index = i - 1 if sequence[i+2] <= nprev
				index = i if sequence[i+2] <= ncurrent
				index = i + 1 if sequence[i+2] <= nnext
			else
				index = nprev > ncurrent ? nprev > nnext ? i - 1 : i : ncurrent > nnext ? i : i + 1
			end
			sequence.delete_at(index)
			sequence_length = sequence.length
			i = 1
			increment = false
		end

		return false if removes > 1

		nprev = increment ? sequence[i] : sequence[i-1]
		nnext = sequence[i+1]
		i += 1 if increment
	end

	return true
end
=end

def solution(sequence)
	return true if sequence.length <= 2

	sequence_length = sequence.length
	nprev = sequence[0]
	nnext = sequence[2]
	del_count = 0
	i = 1

	while i < sequence_length
		increment = true
		ncurrent = sequence[i]

		if nprev >= ncurrent
			del_count += 1

			if !nnext.nil?
				tempt_n_2 = sequence[i+2]

				index = {}
				index[nnext] = i + 1
				index[nprev] = i - 1
				index[ncurrent] = i

				if !tempt_n_2.nil?
					return false if tempt_n_2 <= nnext && tempt_n_2 <= ncurrent
					
					if nprev >= ncurrent && nprev >= nnext
						sequence.delete_at(index[nprev])
					elsif ncurrent >= nnext || ncurrent > tempt_n_2
						sequence.delete_at(index[ncurrent])
					elsif nnext >= tempt_n_2
						sequence.delete_at(index[nnext])
					elsif ncurrent <= nprev && nprev <= nnext
						sequence.delete_at(index[ncurrent])
					end
					p sequence[40915..40925]

				else

					tempt_n_2 = sequence[i-2]
					if !tempt_n_2.nil? && (i-2) >= 0
						 	if tempt_n_2 >= ncurrent
						 			sequence.delete_at(index[ncurrent])
						 	else
						 			sequence.delete_at(index[nprev])
						 	end
					else
						if ncurrent >= nnext || ncurrent >= nprev
							sequence.delete_at(index[ncurrent])
						else
							sequence.delete_at(index[nprev])
						end
					end

				end
				i -= 1 if i > 1
			else
				sequence.delete_at(i-1)
			end
			
			sequence_length = sequence.length
			increment = false
		end

		return false if del_count > 1

		i += 1 if increment
		nprev = sequence[i-1]
		nnext = sequence[i+1]
	end

	return true
end	
# tryhard = []
# 100001.times { |e| tryhard << e }
# tryhard[40920] = 8
# p solution([1, 2, 5, 3, 5])
# p solution([10, 1, 2, 3, 4, 5])
# p solution([1, 5, 4, 5, 6])
# p solution([1, 2, 1, 2]) # false
# p solution([0, -2, 5, 6]) # true
# p solution([1, 2, 3, 4, 3, 6]) # true
# p solution([1, 2, 3, 3, 5]) # true
# p solution([0, 6, 2, 3, 4, 5]) # true
# p solution([9,8]) # true
# p solution([9,8,1]) # true
# p solution(tryhard) # true
# p solution([1, 3, 5, 7, 5])
p solution([1, 3, 6, 2, 8])
# p solution([1, 2, 3])
# p solution([10, 2, 3])
# p solution([3, 2, 1])
# p solution([1, 2])
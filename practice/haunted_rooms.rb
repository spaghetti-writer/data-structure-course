def solution(matrix)
	total_expense = 0
	vertical_rooms = matrix[0].length - 1
	
	for i in 0..vertical_rooms
		matrix.each do |room|
			if room[i] == 0 then break else total_expense += room[i] end
		end
	end

	total_expense
end

p solution([[0,1,1,2], 
 		    [0,5,0,0], 
 		    [2,0,3,3]])
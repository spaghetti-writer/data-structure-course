# def add_statues(statues)
# 	p statues.max 
# 	p statues.min
# 	p statues.size
# 	p "aqui"
# 	p statues.max - statues.min - statues.size + 1

# 	os = statues.sort
#     counter = 0;
    
#     for i in 0..(os.length-1) do
#         temp = os[i+1].to_i - os[i].to_i
#         if temp > 1
#             counter += (temp-1)
#         end
#     end
    
#     return counter;
# end

def add_statues(statues)
    min = statues[0]
    max = statues[0]
    s_length = statues.length - 1

    for i in 1..s_length do
        n = statues[i]

        min = n if n < min
        max = n if n > max
    end

    required_st = (max-min) - s_length 
end

p add_statues([0, 3, 9, 10, 11, 15])
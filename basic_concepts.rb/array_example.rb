# More info https://ruby-doc.org/core-2.7.0/Array.html
# Ways to create arrays
# 1 just create
first_array = [1,2,3,4,5,6,7,8,9]

# 2 empty
second_array = Array.new()
#p second_array

# 3 Defined length (default values nil (null, nulo))
third_array = Array.new(5)
#p third_array

# 4 Defined length and default values (length, default_values)
fourth_array = Array.new(5, 0)
#p fourth_array

    # 4.1 Composed arrays
    # hash array
    fifth_array = Array.new(5) {Hash[:id => nil, :name => "",:last_name => ""]}
    #p fifth_array
    # default custom values
    sixth_array = Array.new(5) { |i| i + 1 }
    #p sixth_array

# 5 Arrays on Array
matriz_table = Array.new(3) { Array.new(3,0) }
#p matriz_table

# 6

first_array.each{ |x| }
#p x # throw error x, exist just into each block

for x in first_array; end
#p x # print last item

## Get array data

random_value_1 =  first_array[4]
# p random_value_1 # print 5

# loops
# example: print all values into array 

# each, (works like foreach c#)
# first_array.each do |i_value|
#     p i_value
# end

# you can also use count property: (fifth_array.count - 1) 
# for i in 0..(fifth_array.length - 1) do  
#     p fifth_array[i]
# end

# (fifth_array.count - 1).times do |i|
#     p fifth_array[i]
# end

# validate and get concrete values

# p first_array.include?(8) # true
# p first_array.include?(11) # false

# return value position, if doesnt exist return nil
# p first_array.index(4)
# p first_array.index(1156)

# return collection that met validation
# p first_array.select { |number| number > 3 }

# return first value that met validation
# p first_array.detect { |number| number > 3 }
# p first_array.find { |number| number > 3 }

# searching on hashes
# hash_array_search_ex = [ 
#     Hash[id: 1, name: "Karen", last_name: "Akjhscl"], 
#     Hash[id: 2, name: "Stephen", last_name: "Strange"], 
#     Hash[id: 3, name: "Emily", last_name: "Ojsagje"] 
# ]

# found_hash_item = hash_array_search_ex.detect { |user| user[:name].downcase == "stephen" }
# p found_hash_item

# same way using structs
# class FirstWay < Struct.new(:id, :name, :last_name); end
# struct_array = [ FirstWay[1, "Karen", "Adsd"], FirstWay[2, "Stephen", "Strange"], FirstWay[3, "Emily", "Ohjsdhgh"]]
############# #### found_struct_item = struct_array.detect { |user| user[:name].downcase == "stephen" } # Also works
# found_struct_item = struct_array.detect { |user| user.name.downcase == "stephen" }
# p found_struct_item

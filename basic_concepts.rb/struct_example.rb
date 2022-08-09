# Documentacion https://ruby-doc.org/core-2.5.0/Struct.html
# interesting properties: 
    # default values are nil
    # keyword_init: true (have to reference structs members)
        # using_keyword_init = NameStruct.new(id: 1, name: "user", last_name: "example")
# ways to create a structure

# 1
class FirstWay < Struct.new(:id, :name, :last_name); end

first_user = FirstWay.new(1,"first","user")

p first_user

# 2
Struct.new("SecondWay", :id, :name, :last_name)

second_user =  Struct::SecondWay.new(2,"second", "user")

p second_user

# 3
ThirdWay = Struct.new(:id, :name, :last_name)

third_user = ThirdWay.new(3, "third", "user")

p third_user

#  Another way to implement struct
fourth_user = ThirdWay[4, "fourth"]

p fourth_user

# vs structs

p (first_user == second_user) # false

clon_first_user = FirstWay[1,"first","user"]

p (first_user == clon_first_user) # true

    # Another way 
    p first_user.eql?(clon_first_user)

# def on struct

FifthWay = Struct.new(:id, :name, :last_name) do 
    def greeting
        "Hi #{name}"
    end
end

fifh_user = FifthWay[5, "fifth", "user"]

p fifh_user.greeting

# get atributtes on struct

p first_user.name
p first_user["name"]
p first_user[:name]
p first_user[1]
p first_user.values[0..1]
p first_user.values_at(0..1)

# dig, access nested data structure, more info: https://runebook.dev/es/docs/ruby/dig_methods_rdoc

p first_user.dig(:last_name)

# Iterate attributes on struct

p "simple output"
first_user.each{ |fua| puts(fua)}

p "composed output"
first_user.each_pair{ |att_name, att_value| puts("#{att_name}: #{att_value}")}

# other features

# hash
p first_user.hash
p clon_first_user.hash

# string
p first_user.to_s
p first_user.inspect

# length
p first_user.length
p first_user.count

# attributes
p first_user.members

# parse
# hash collection
p first_user.to_h
# array
p first_user.to_a

# first_item = First.new(1,"first","user")
# second_tem = First.new(2,"first","user")
# third_item = First.new(3,"first","user")
# fourt_item = First.new(4,"first","user")
# fifth_item = First.new(5,"first","user")
# sixth_item = First.new(6,"first","user")
# seventh_item = First.new(6,"first","user")

# c_first_item = First.new(1,"first","user")
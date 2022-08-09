# def luck_check(str)
#   numbers = ('0'..'9').to_a
#   str_as_a = str.split("")
#   illegal_char = false
#   illegal_char = true if str == ""
  
#   str_as_a.each do |l| 
#     if !numbers.include?(l)
#       illegal_char = true
#       break
#     end
#   end
  
#   if illegal_char
#     begin
#       raise
#     rescue
#       puts "illegal char" 
#     end
#   else
#     c_nums_to_sum = (str.length / 2)
#     nleft = str_as_a.first(c_nums_to_sum).map{ |n| n.to_i }.reduce(:+)
#     nright = str_as_a.last(c_nums_to_sum).map{ |n| n.to_i }.reduce(:+)
#     return (nleft == nright)
#   end
# end

def luck_check (str)
  raise if str[/\D/] || str.empty?
  str = str.chars.map(&:to_i)
  str.first(str.size/2).reduce(:+) == str.last(str.size/2).reduce(:+)
end

p luck_check('683179');
p luck_check('683000');
p luck_check('68300');
p luck_check('6F43E8');
p luck_check();
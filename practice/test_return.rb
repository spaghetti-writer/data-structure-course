# for i in 1..20 do 
#     if i == 12
#         return i
#         p "asdasdasd"
#     end
#     p i
# end

# def multiply(a, b)
#   a * b
# end

# multiply(1, 2)

# def panagram?(string)
#   ([*?a..?z] - string.downcase.chars).empty?
# end

# def panagram?(string)
#   string.downcase.chars.sort.uniq.join =~ /abcdefghijklmnopqrstuvwxyz/ ? true : false
# end

# def pangram?(string)
#   (?a..?z).to_a - string.downcase.chars == []
# end

# def sum_two_smallest_numbers(numbers)
#   numbers.min(2).sum
# end

# def sum_two_smallest_numbers(numbers)
#   numbers.sort.first(2).reduce(:+)
# end

# def sum_two_smallest_numbers(numbers)
#   summer = Summer.new
#   summer.run(numbers)
# end

# class Summer
#   attr_accessor :smaller, :smallest

#   def initialize
#     @smaller = Integer::MAX
#     @smallest = Integer::MAX
#   end

#   def run(array)
#     if (catch_edgecase(array) != -1)
#       return catch_edgecase(array)
#     end
  
#     for candidate in array
#       classify(candidate)
#     end

#     return smaller + smallest
#   end
  
#   def catch_edgecase(array)
#     if array.length == 1
#       return array[0]
#     else
#       return -1
#     end
#   end
  
#   def classify(candidate)
#     if !is_positive(candidate)
#       return
#     end
#     if is_smallest(candidate)
#       @smallest = candidate
#     elsif is_smaller(candidate)
#       @smaller = candidate
#     end
#   end

#   def is_positive(candidate)
#     return candidate >= 0
#   end

#   def is_smallest(candidate)
#     return candidate < smallest
#   end

#   def is_smaller(candidate)
#     return candidate < smaller
#   end
# end

# class Integer
#   N_BYTES = [42].pack('i').size
#   N_BITS = N_BYTES * 16
#   MAX = 2 ** (N_BITS - 2) - 1
#   MIN = -MAX - 1
# end

def sort_string(string)
  string_as_array = string.split(" ")
  sorted_string = []
  
  if sorted_string == 0 then return "" end

  for i in 1..string_as_array.count do 
    string_as_array.each do |word|
      if !word.index("#{i}").nil? 
        sorted_string[i] = word
        break
      end
    end
  end

  output_string = sorted_string.join(' ')
  output_string
end

def order(words)
  words.split.sort_by{ |w| w[/\d/] }.join(' ')
end

def order(words)
  words.split.sort_by { |w| w.chars.min } .join(" ")
end

def order(words)
  return words.split()
              .map{|w| [w.gsub(/\D+/, '').to_i, w] }
              .sort
              .map{|_,w| w}
              .join(' ')
end

p sort_string("4of Fo1r pe6ople g3ood th5e the2")
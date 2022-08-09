# def solucion(s1, s2)
#   hash_s1 = Hash.new(0)
#   hash_s2 = Hash.new(0)
#   s1.chars.each { |e| hash_s1[e] += 1 }
#   s2.chars.each { |e| hash_s2[e] += 1 }
  
#   counter = 0
#   hash_s1.each do |k,v|
#     if hash_s2[k]
#       counter += (v <= hash_s2[k]) ? v : hash_s2[k]
#     end
#   end
#   counter
# end

def solucion(s1, s2)
	x = s1.each_char.count { |c| s2.include?(c) && s2[c] = "" }
	p x
end

solucion("aabcc", "adcaa")
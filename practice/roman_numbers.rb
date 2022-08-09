def solution(number)
  return "" if number == 0 || number >= 4000

  # Abbreviations: bl = bottom letter; ml = middle letter; tp = top letter
  dbase = {bl: "I", ml: "V", tl:"X"}
  dten = {bl: "X", ml: "L", tl:"C"}
  dhundred = {bl: "C", ml: "D", tl:"M"}
  dthousand = {bl: "M"}
  
  numbers = number.to_s.split('')
  scala = (numbers.length - 1)
  roman = []

  case scala
    when 0
      roman = number_conversion(numbers, scala, dbase)
    when 1
      roman = number_conversion(numbers, scala, dten, dbase)
    when 2
      roman = number_conversion(numbers, scala, dhundred, dten, dbase)
    when 3
      roman = number_conversion(numbers, scala, dthousand, dhundred, dten, dbase)
  end

  roman.join
end

def number_conversion(numbers, i, bdict, tdict=nil, hdict=nil, tsdict=nil)
  output = []
  while i >= 0
    case i
      when 0 
        letter = translate_number(bdict, numbers[i])
      when 1 
        letter = translate_number(tdict, numbers[i])
      when 2 
        letter = translate_number(hdict, numbers[i])
      when 3 
        letter = translate_number(tsdict, numbers[i])
    end
    output[i] = letter
    i -= 1
  end
  output
end

def translate_number(dict, number)
  n = number.to_i
  
  return "" if n == 0
  return dict[:ml] if n == 5

  letter = ""

  if n > 5
    return (dict[:bl].to_s + dict[:tl].to_s) if n == 9
    letter += dict[:ml].to_s
    (n - 5).times { letter += dict[:bl]}
  else
    return (dict[:bl].to_s + dict[:ml].to_s) if n == 4
    n.times { letter += dict[:bl] }
  end

  letter
end

NUMERALS = { M: 1000, CM: 900, D: 500, CD: 400, C: 100, XC: 90,
               L: 50, XL: 40, X: 10, IX: 9, V: 5, IV: 4, I: 1 }

def solution2(number)
  return '' if number <= 0
  NUMERALS.each { |key, val| return key.to_s + solution(number - val) if number >= val }
end

def solution_v2(number)
  return "" if number <= 0 || number >= 4000

  # 0: 1-10; 1: 11-100, 2: 101-1000, 3: 1001-3999
  # b: base; m: middle; t: top
  dictionary =  [{b: "I", m: "V", t:"X"}, {b: "X", m: "L", t:"C"}, {b: "C", m: "D", t:"M"}, {b: "M"}]

  number_as_a = number.to_s.chars
  roman_number = ""

  number_as_a.each_with_index do |nbr, index|
    level = (number_as_a.length - 1) - index
    roman_number += translate_number_v2(nbr.to_i, dictionary[level])
  end

  roman_number
end

def translate_number_v2(number, dict)
  return "" if number == 0
  return "#{dict[:b]}#{dict[:t]}" if number == 9
  return "#{dict[:b]}#{dict[:m]}" if number == 4
  return "#{dict[:m]}" if number == 5
  
  if number > 5
    temp = "#{dict[:m]}"
    (number-5).times { temp += "#{dict[:b]}" }
    return temp
  end

  temp = ""
  number.times { temp += "#{dict[:b]}" }
  temp
end

p solution_v2(1)
p solution_v2(12)
p solution_v2(123)
p solution_v2(4234)



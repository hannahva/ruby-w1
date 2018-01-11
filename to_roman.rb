# numbers 1 - 3000 output as additive roman numerals

@roman_nums = {
  1000 => 'M',
  500 => 'D',
  100 => 'C',
  50 => 'L',
  10 => 'X',
  5 => 'V',
  1 => 'I'
}

def to_roman(number)
  result = ''
  @roman_nums.each do |value, letter|
    # print letter amount of times its value divides into the current number
    result << letter * (number / value)
    # number assigned to remainder to get numerals from large to small
    number = number % value
  end
  return result
end

puts to_roman(4)
puts to_roman(7)
puts to_roman(55)
puts to_roman(12)
puts to_roman(134)
puts to_roman(2498)
puts to_roman(678)


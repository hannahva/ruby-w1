# return count of each letter
def count_letters(string)
  counts = Hash.new(0)
  letter_array = string.delete(' ').split('')

  letter_array.each { |letter| counts[letter] += 1 }
  return counts
end

# return indices of each letter
def letter_indices(string)
  # allows you to define default value as an array, so can return multiple indices for duplicate elements. Also creates new default object each time instead of altering single default object
  indices = Hash.new { |hash, key| hash[key] = [] }
  letter_array = string.split('')

  letter_array.each_with_index do  |letter, index|
    indices[letter]  << index
  end
  return indices
end

puts count_letters("lighthouse in the house")
puts letter_indices("lighthouse in the house")
# PRE-REFACTOR CODE:
# 1.upto(100) do |i|
#   if i % 5 == 0 && i % 3 == 0
#     puts "FizzBuzz"
#   elsif i % 5 == 0
#     puts "Buzz"
#   elsif i % 3 == 0
#     puts "Fizz"
#   else
#     puts i
#   end
# end

def divisible_by_three?(num)
  num % 3 == 0
end

def divisible_by_five?(num)
  num % 5 == 0
end

def fizzbuzz(first, last)
  first.upto(last) do |num|
    if divisible_by_five?(num) && divisible_by_three?(num)
      puts "FizzBuzz"
    elsif divisible_by_five?(num)
      puts "Buzz"
    elsif divisible_by_three?(num)
      puts "Fizz"
    else
      puts num
    end
  end
end

fizzbuzz(2, 10)
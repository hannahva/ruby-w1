# two empty bottles = one free (full) bottle of pop
# four bottle caps = one free (full) bottle of pop
# (full) bottle = $2 to purchase
# For example, given a $20 investment, the customer will get 10 bottles of pop. That gives a supply of both bottles and bottle caps that can be used to redeem for further bottles, which will then produce a further supply for recycling.

# instance variables to keep track of different iterations through program
@complete_caps = 0
@complete_empty_bottles = 0
@complete_full_bottles = 0
@times_recycled = 0

def recycling(investment_dollars, full_bottles, empty_bottles, caps)

  puts "please enter the amount you'd like to invest: "
  investment_dollars = gets.chomp.to_i

  initial_bottles = investment_dollars / 2
  p "bottles bought: #{initial_bottles}"

  current_caps = (full_bottles + initial_bottles) + caps
  current_bottles = (full_bottles + initial_bottles) + empty_bottles

  bottles_from_caps = current_caps / 4
  p "#{bottles_from_caps} full bottles possible from caps"
  leftover_caps = current_caps % 4

  full_from_empty = current_bottles / 2
  p "#{full_from_empty} full bottles possible from empties"
  leftover_empty = current_bottles % 2

  # total_full_bottles gained from recycling the initial bottles (bought with investment_dollars)
  total_full_bottles = bottles_from_caps + full_from_empty

  @complete_full_bottles =  @complete_full_bottles + total_full_bottles + initial_bottles
  @complete_caps = leftover_caps
  @complete_empty_bottles = leftover_empty

  @times_recycled += 1

  p "total full bottles after this round: #{total_full_bottles}, total full bottles acquired with initial investment: #{@complete_full_bottles}, caps remaining: #{@complete_caps}, empty bottles remaining: #{@complete_empty_bottles}, times recycled: #{@times_recycled}"

  # stops endless loop
  recycling(investment_dollars, total_full_bottles, leftover_empty, leftover_caps) unless bottles_from_caps == 0 &&full_from_empty == 0
end

puts recycling(20, 0, 0, 0)

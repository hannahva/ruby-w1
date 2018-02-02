def sign_cost(colour_count, square_feet)
  price = (square_feet * 15)
  if colour_count <= 2
    price += (colour_count * 10)
  elsif colour_count > 2
    price += (colour_count * 15)
  end
  puts "subtotal is #{price}"
  puts "total is #{tax(price)}"
end

def tax(price)
  tax = price * 0.15
  total = price + tax
  total
end

sign_cost(4, 4)
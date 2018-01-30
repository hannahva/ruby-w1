# must be baller and either furnished or rent cheaper than 2100
def rent?(furnished, rent, baller)
   baller && furnished || baller && rent < 2100
end

###
# Add your "test" ("driver") code below in order to "test drive" (run) your method above...
# The test code will call the method with different permutations of options and output the result each time.
# This way, you will be able to run the renter.rb file from the CLI and look at the output of your "tests" to validate if the method works.
# Without the test code, it will be hard for you to know if this method is working as it should or not.
###

# should return false
result = rent?(false, 5000, true)
puts "unfurnished, $5000, baller: #{result}"

#  should return true
result = rent?(true, 2000, true)
puts "furnished, $2000, baller: #{result}"

# should return false
result = rent?(true, 5000, false)
puts "furnished, $5000, not baller: #{result}"

# should return true
result = rent?(false, 2, true)
puts "unfurnished, $2, baller: #{result}"

# Your method should wait for user input, which corresponds
# to you saying something to your dog (named Shakil).

# You'll probably want to write other methods, but this
# encapsulates the core dog logic
def shakil_the_dog
  while true do
    input = gets.chomp.downcase
    if input == 'go away'
      break
    elsif input == 'woof'
      puts 'WOOF WOOF WOOF'
    elsif input.include? 'treat'
      puts '...?'
    elsif input.include? 'shakil stop'
      puts '...'
    elsif input == 'meow'
      puts 'woof woof woof woof woof'
    else
      puts 'woof'
    end
  end
end

# Run our method
shakil_the_dog
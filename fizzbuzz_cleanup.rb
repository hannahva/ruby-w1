#  original code
def fb(s, f)
    s.upto(f) { |x|
      puts e(x)
    }
end

  def e(y)
    if div_3?(y) && div_5?(y)
        "FizzBuzz"
      elsif div_5?(y)
        "Buzz"
        elsif div_3?(y)
          "Fizz"
          else
            y
    end
  end

def div_5?(x); x % 5 == 0; end;

def div_3?(x1); x1 % 3 == 0; end;

a = 60
b = 80
fb(a, b)

# cleaned up using style guide
def fizzbuzz(start, finish)
  start.upto(finish) do |num|
    if div_by_3?(num) && div_by_5?(num)
      puts "FizzBuzz"
    elsif div_by_5?(num)
      puts "Buzz"
    elsif div_by_3?(num)
      puts "Fizz"
    else
      puts num
    end
  end
end

def div_by_5?(num)
  num % 5 == 0
end

def div_by_3?(num)
  num % 3 == 0
end

fizzbuzz(60, 80)

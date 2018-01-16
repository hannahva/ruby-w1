def benchmark
  start = Time.now
  yield if block_given?
  end_time = Time.now
  running = end_time - start
  running.round(5)
end

# Be careful, pasting this into IRB will take a long time to print.
# It's a loooong string. :)
long_string = "apple"*100000000

running_time = benchmark { long_string.reverse }

puts "string.reverse took #{running_time} seconds to run"
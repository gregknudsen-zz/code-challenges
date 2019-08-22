def iterative_fib(num)
  current = 0
  previous = 1

  num.times do
    current, previous = previous, current + previous
    # current = previous
    # previous = current + previous
    puts "Current: #{current}"
    puts "Previous: #{previous}"
    puts "Current plus previous: #{current + previous}"
  end
  current
end

def recursive_fib(num)
  num <= 1 ? num : recursive_fib(num - 1) + recursive_fib(num - 2)
  # end
end

num = 3
iterative_fib(num)
# recursive_fib(num)

# require 'benchmark'
# num = 35
# Benchmark.bm do |x|
#   x.report("iterative_fib")  { iterative_fib(num)  }
#   x.report("recursive_fib") { recursive_fib(num) }
# end
def collatz(num)
  result = [num]
  next_num = num

  while next_num != 1
    if next_num.odd?
      next_num = 3*next_num + 1
      result.push(next_num)
    else
      next_num /= 2
      result.push(next_num)
    end
  end
  return result
end
 

# lengths = []
def print_length(array)
  # puts "#{array.length} is the length of Collatz sequence, and it starts with #{array[0]}"
  # puts lengths.inspect
end

lengths = []
900.times do |n|
  # print_length(collatz(n + 1))
  lengths.push(collatz(n + 1).length)
end
puts lengths.sort[-1]
# puts lengths.sort.inspect

# puts lengths.sort[-1]
def print_sequence(array)
  puts array.inspect
end


# print_sequence(collatz(25))
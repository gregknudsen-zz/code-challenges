
module Luhn
  def self.is_valid?(number)
    #WRITE YOUR SOLUTION HERE
    # Step 1 - break the credit card into its individual digits - Start from the right
    numbers = number.to_s.split('').reverse.map(&:to_i)
    # Step 2 - double every second digit (i.e., digit 2, 4, 6 etc.).
    # Step 3 - If the doubled value is greater than or equal to 10, take the value and subtract 9 from it.
    numbers_to_add = self.double_every_other_digit(numbers)
    # Step 4 - Sum the digits.
    # Step 5 - If the sum is divisible by 10, it's a valid number. Otherwise it's invalid.
    sum = self.sum_the_digits(numbers_to_add)
    return sum % 10 === 0
  end

  def self.double_every_other_digit(array)
    numbers_to_double = array.map.with_index do |val, i|
      if i.odd?
        val
      end
    end
    # puts numbers_to_double.inspect
    numbers_to_double.delete_if { |el| el === nil }

    numbers_not_to_double = array.values_at(0,2,4,6,8,10,12,14)

    doubled_numbers = numbers_to_double.map do |num|
      product = num * 2
      product >= 10 ? product - 9 : product
    end
    return doubled_numbers.concat(numbers_not_to_double)
  end

  def self.sum_the_digits(array)
    summed = array.sum
    return summed
  end
  # self.is_valid?(377681478627336)
  # self.is_valid?(4194560385008504)
end




# expect(Luhn.is_valid?(4194560385008504)).to be true
# expect(Luhn.is_valid?(4194560385008505)).to be false


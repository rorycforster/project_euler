def is_palindrome?(num)
  num == num.to_s.reverse.to_i
end

#def is_product_of_2_2_digit_numbers?(num)
  #set_of_divisors = (10...100).to_a
   ##if num/each of the set of set_of_divisors = two digit number, then its true
   #result = set_of_divisors.each do|divisor|
    #num/divisor
   #end
#
   #result.each{|x|
    #if (x < 100) && (x > 9)
      #return true
    #else
      #return false
    #end
   #}
#
#end

def has_2_3_dig_factors?(number)
  three_dig_nums = (100..999).to_a
  products = []
  three_dig_nums.each do |first_factor|
    three_dig_nums.each do |second_factor|
      product = first_factor * second_factor
      products << product
    end
  end
  return products.include?(number)
end

#999 * 999 = 998001
#greatest product of 2 three digit factors

starting_number = 998001

while !(is_palindrome(starting_number)&&has_2_3_dig_factors?(starting_number))
  starting_number -=1
end

puts starting_number




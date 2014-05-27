def prime?(num)
  two_to_num = 2..(num-1)
  two_to_num.each do |x|
    if num % x == 0
      return false
    else
      return true
    end
  end
end


def largestprimefactor(num)
  prime_factors = Array.new
  counter = 1
  prime_num_base = 2
  while counter < num
    if num % prime_num_base == 0 && prime?(prime_num_base)
      prime_factors << prime_num_base
      counter *= prime_num_base
    end
    prime_num_base += 1
  end
  puts "The answer is #{prime_factors.last}"
end

largestprimefactor(600851475143)
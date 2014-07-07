def prime?(num)
  #prime numbers are only divisible by 1 and themselves
  #prime numbers are not divisible by any number from 2 to the number itself
  two_to_num = 2..(num-1)
  two_to_num.each { |x| return false if num % x == 0 }
  true
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
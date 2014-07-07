# #sum of all the primes below 2 million
# #first, list all the primes
# def prime?(num)
#   #prime numbers are only divisible by 1 and themselves
#   #prime numbers are not divisible by any number from 2 to the number itself
#   two_to_num = 2..(num-1)
#   two_to_num.each { |x| return false if num % x == 0 }
#   true
# end

# a = []
# (2..2_000_000).each { |i| a << i if prime? i ; puts "Current number is #{i}"}


# puts "Sum total is #{a.reduce(:+)}"

#Faster solution

require 'prime'; puts Prime.each(2_000_000).reduce(:+)
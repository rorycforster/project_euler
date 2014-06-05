def prime?(x)
  (2..x-1).each do |y|
    if x % y == 0
      return false
    end
  end
  return true
end

def prime_number(nth)
  primes = [2]
  i = 3
  while primes.length <= nth
    #prime numbers greater than 2 are not even(divisible by 2)
    if prime?(i)
      primes << i
    end
    i += 1
  end
  puts primes[nth-1]
end

prime_number(10_001)
#INITIAL ANSWER
#def no_remainder(num)
#  x = 1
  #go through 1..20 to see if num is divisible by each of those numbers
#  while x <= 20
    #if num % x is >0 then num doesn't work.  tell us it's false and break the loop.
#    if num % x > 0
#      return false
#      break
#    end
    #keep running the %x > 0 test until x = 20
#    x +=1
#  end
#end

#go through all the numbers less than 300 million
#if the number passes no_reaminder, display the number
#y = 1
#while y < 300000000
#  if no_remainder(y) == false
#    y += 1
#  else
#    puts y
#    break
#  end
#end


##SHORTER ANSWER
num = 2520
until (1..20).all?{|x| num % x == 0}
  num += 1
end
puts num

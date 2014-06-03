def sum_squares(max)
  nums_array = []
  (1..max).each do|num|
    nums_array.push(num)  
  end
  nums_array.map!{|base| base**2}
  return nums_array.reduce(:+)
end

def square_sum(max)
  nums_array = []
  (1..max).each do|num|
    nums_array.push(num)
  end
  sum_of_nums = nums_array.reduce(:+)
  return sum_of_nums**2
end

puts square_sum(100) - sum_squares(100)
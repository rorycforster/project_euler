def special_numbers_sum(num, multiple_a, multiple_b)
  special_nums = Array.new
  i = 0
  while i < num
    if i%multiple_a == 0
      special_nums << i
    elsif i%multiple_b == 0
      special_nums << i
    end
    i += 1 
  end
  puts special_nums.reduce(:+)
end
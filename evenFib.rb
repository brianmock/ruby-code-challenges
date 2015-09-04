x = 1
sum = 0
y = 1
loop do 
  y = y + x
  x = y - x
  if y%2 == 0
    sum += y
  end
  break if sum > 4000000
end
puts "#{sum}"

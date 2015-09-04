array = Array(1...1000)
x = 0
array.each do |i|
  if i%3 == 0
    x += i
  elsif i%5 == 0
    x += i
  end
end
  puts "#{x}"

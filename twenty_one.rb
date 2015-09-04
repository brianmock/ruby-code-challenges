def twenty_one?(*x)
	arr = Array.new
	x.each {|y| arr << y}
	puts true if  arr.inject(:+) == 21
end


twenty_one?(3, 4, 5, 6, 3)
twenty_one?(3, 11, 10)

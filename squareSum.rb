def square(n)
	x = n*n
	return x
end

sumsq = 0 
sqsum = 0
sum1 = 0

1.upto(100) { |i| 
	sumsq += square(i)
	sum1 += i
	sqsum = square(sum1)
}

puts "#{sqsum - sumsq}"
def is_prime?(n)
	((2..(Math.sqrt(n)))).each do |i|
		return false if n % i == 0
	end
	return true
end
sum = 0
count = 0
num = 2
while count < 1000
	if (is_prime?(num))
		sum += num
		count += 1
	end
	num += 1
end
puts sum


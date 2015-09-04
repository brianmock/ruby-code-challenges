def is_prime?(n)
	((2..(Math.sqrt(n)))).each do |i|
		return false if n % i == 0
	end
	return true
end

array = Array.new
0.upto(1000) {|x| 
	if (is_prime?(x)) && (x.to_s == x.to_s.reverse) 
		array << x
	else
		nil
	end
}

puts array.sort![-1]

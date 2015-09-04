#timer_start = Time.now

def is_palindrome?(n)
	n.to_s == n.to_s.reverse
end

max = 0
100.upto(999) { |i|
	i.upto(999) { |j|
		p = i * j

		if is_palindrome?(p) && p > max then max = p end
	}
}

puts max
#puts "Elapsed time: #{(Time.now = timer_start)*1000} milliseconds"

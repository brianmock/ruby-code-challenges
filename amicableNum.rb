time1 = Time.now

def d(n)
	sum = 1
	2.upto(Math.sqrt(n)) {|x| sum += n / x + x if n%x == 0 }
	sum	
end

def is_amicable?(a,b)
	return true if (d(a) == b) && (d(b) == a) && (a != b)
end

is_amicable?(220,284)

new_sum = 0
(0..10_000).each do |v|
	r = d(v)
	new_sum += v if (v != r && d(r) == v)
end

puts new_sum

puts "Elapsed Time: #{(Time.now - time1)*1000} ms"

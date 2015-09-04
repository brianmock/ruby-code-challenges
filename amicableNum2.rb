timer_start = Time.now

class Integer
	  def divisors_sum
		      n = self
		          sum = 1
			   
			      (2..Math.sqrt(n)).each do |i|
				            sum += n / i + i if n % i == 0
					        end
			       
			          sum
				    end
end
 
sum = 0
 
(0..10_000).each do |a|
	  b = a.divisors_sum
	    sum += a if (a != b && b.divisors_sum == a)
end
 
puts sum

puts "Elapsed Time: #{(Time.now - timer_start)*1000} milliseconds"

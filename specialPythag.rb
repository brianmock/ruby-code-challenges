product = 0

1.upto(1000) { |a| 
	(a+1).upto(1000) { |b|
		c = 1000 -a -b
		if (a**2 + b**2 == c**2)
			product = a*b*c
			break
		end
		}
		break if product > 0
	}

puts product
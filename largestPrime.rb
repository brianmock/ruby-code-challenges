require Prime
class DetermineIfPrime
def initialize (nth_value)
@nth_value = nth_value
primetest
end 

def primetest
	array = Array()
	for test_value in [2...600851475143] do
		if (@nth_value % test_value) == 0
			array << test_value
		end
	end
	puts "#{array}"
end

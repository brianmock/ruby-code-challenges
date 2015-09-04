require 'set' # Set: Fast array lookup / Simple existence hash
 
@seen_numbers = Set.new
@happy_numbers = Set.new
 
def happy?(n)
  puts 1 if n == 1 # Base case
    return @happy_numbers.include?(n) if @seen_numbers.include?(n) # Use performance cache, and stop unhappy cycles
     
      @seen_numbers << n
        digit_squared_sum = n.to_s.each_char.inject(0) { |sum, c| sum + c.to_i**2 } # In Rails: n.to_s.each_char.sum { c.to_i**2 }
	 
	  if happy?(digit_squared_sum)
	      @happy_numbers << n
	      puts 1 # Return true
	  else
	        puts 0 # Return false
          end
end

File.open(ARGV[0]).each do |line|
	puts line
	happy?(line.to_i)
end

ARGV.each do|file|
	array = Array.new
	File.open(file).readlines.map do |line|
		array << line.split.map(&:to_i)
	end

	0.upto(array.count - 1) {|a| 
		x = 0
		y = 0
		n = 0
		x = array[a][0]
		y = array[a][1]
		n = array[a][2]
		1.upto(n) { |b| 
			if (b%x == 0) && (b%y == 0) && (b == n)
				puts "FB"
			elsif (b%x == 0) && (b%y == 0)
				print "FB "
			elsif (b%x == 0) && (b == n)
				puts "F"
			elsif (b%x == 0)
				print "F "
			elsif (b%y == 0) && (b == n)
				puts "B"
			elsif (b%y == 0)
				print "B "
			elsif b == n
				puts "#{b}"
			else 
				print "#{b} "
			end
		}
	}

end



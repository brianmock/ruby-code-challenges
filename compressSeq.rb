ARGV.each do|file|
	array = Array.new
	File.open(file).readlines.map do |line|
		array << line.split.map(&:to_s)
	end
	arrayUniq = Array.new
	array.each {|y| arrayUniq << y.uniq }
	0.upto(array.count - 1) { |x| 
		0.upto(arrayUniq[x].count - 1) { |z|
			print "#{array[x].count("#{arrayUniq[x][z]}")}" + " " + "#{arrayUniq[x][z]}" + " "
		}
		print "\n"
	}
end


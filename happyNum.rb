array = Array.new
File.open(ARGV[0]).each do |line|
	array << line.gsub(/\n/,"").split("")
end
g = 0

10.times {|z| array.each {|x|g = 0
       	x.each {|y| g += y.to_i ** 2}
	if g == 1
		puts 1
	else array << g.to_s.split("")
		if z == 10
			puts 0
		else z += 1
		end
	end
}
}

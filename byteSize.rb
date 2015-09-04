array = Array.new
File.open(ARGV[0]).each do |line|
	array << line.length.to_i
end

puts array.inject(0) {|x,y| x += y}

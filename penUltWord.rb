File.open(ARGV[0]).each do |line|
	array = Array.new
	array << line.split(" ")
	array.each{|x| puts x[-2]}
end

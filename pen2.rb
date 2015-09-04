File.open(ARGV[0]).each do |line|
	puts line.split(" ").count
end

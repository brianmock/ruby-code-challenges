def swapNum(arr)
	y = ""
	arr.each {|x| y = x.insert(0, x[-1]).insert(-1, x[1])
	y.slice!(-2)
	y.slice!(1)
	print y + " "}
	print "\n"
end

File.open(ARGV[0]).each do |line|
		swapNum(line.split(" "))
end


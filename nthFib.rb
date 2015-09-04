def getFib(arr)
	x = 0
	y = 1
	z = 0
	arr[0].to_i.times {
		z = x + y
		y = x
		x = z 
	}
	puts z


end

File.open(ARGV[0]).each do |line|
	getFib(line.split)
end

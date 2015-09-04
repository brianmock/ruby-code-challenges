def doMult(arr)
	y = 1
	z = 0
	loop {
		z = 0
		z = arr[1].to_i * y
		y += 1
		break if z > arr[0].to_i
	}
	puts z
end

File.open(ARGV[0]).each do |line|
	doMult(line.split(","))
end

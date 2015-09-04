def casePercent(arr)
	z = 0
	y = 0
	arr[0].each_char {|x| if ('A'..'Z').include? x
		y += 1
else
	z +=1
end
	}
	d = arr[0].length
	low = (z.to_f/d)*100.00
	up = (y.to_f/d)*100.00
	print "lowercase: " + "%5.2f" % low + " " + "uppercase:" + " " + "%5.2f" % up + "\n"
end

File.open(ARGV[0]).each do |line|
		casePercent(line.split(" "))
end


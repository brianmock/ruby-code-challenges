def capLetters(arr)
	string = ""
	arr.each {|x| x[0] = x[0].upcase
		string << x + " "
	}
	puts string
end

File.open(ARGV[0]).each do |line|
	capLetters(line.split)
end

ARGV.each do|file|
	array = Array.new
		File.open(file).readlines.map do |line|
			array << line.split(";").map(&:to_s)
		end
#	print array
	numHash = Hash[
		"zero" => "0",
		"one" => "1",
		"two" => "2",
		"three" => "3",
		"four" => "4",
		"five" => "5",
		"six" => "6",
		"seven" => "7",
		"eight" => "8",
		"nine" => "9",
	]
#	print numHash
#	print array
	0.upto(array.count - 1) {|x| 0.upto(array[x].count - 1) {|y|
		if y == array[x].count - 1
			print "#{numHash.invert.key(array[x][y].to_s.gsub(/\n/,""))}" + "\n"
		else print "#{numHash.invert.key(array[x][y].to_s.gsub(/\n/,""))}"
		end
	}
	}
end

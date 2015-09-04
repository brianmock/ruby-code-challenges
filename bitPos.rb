def bitPos(arr)
	bin = ""
	bin = arr[0].to_i.to_s(2)
	if bin[-arr[1].to_i] == bin[-arr[2].to_i]
		puts "true"
	else
		puts "false"
	end
end

File.open(ARGV[0]).each do |line|
	bitPos(line.split(","))
end

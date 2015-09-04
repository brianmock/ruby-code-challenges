ARGV.each do|file|
	File.open(file).readlines.map do |line|
		if line.to_s.rindex("#{line[-2]}", -3) == nil
			puts -1
		else
			puts line.to_s.rindex("#{line[-2]}", -3) 
		end
	end
end

File.open(ARGV[0]).each do |line|
	if line.to_s.length <= 55
		puts line.to_s
	elsif line.to_s.length > 55
		line = line.to_s[0..40]
		if line.to_s.rindex(" ") != -1
			line = line.to_s[0..(line.rindex(" ").to_i - 1)]
		end
		puts line.to_s + "... <Read More>"
		#	puts "#{line.to_s[0..40]}" + "... <Read More>"
	#	else puts "#{line.to_s[0..40]}" + "... <Read More>"
	#	end
#		puts "#{line.to_s[0..37]}" + "..."
	else nil
	end
end

x = (1..12)
y = (1..12)

y.each do |j|
	x.each {|i| print "%3d " % (i*j)}
	print "\n"
end



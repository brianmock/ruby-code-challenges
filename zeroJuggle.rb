ARGV.each do|file|
  array = Array.new
  File.open(file).readlines.map do |line|
    array << line.split(" ")
  end
  newArray = Array.new
  array.each {|x| newArray << x.each_slice(2).to_a }
#  print "1001".to_i(2)
#  print newArray
  array3 = []
  newArray.each {|y| 
	  y.each {|z|
		  z[1].length.times{ print z[0] == "00" ? "1" : "0"}


#		  if z[0] == "00"
#			  char = 1
#		  z[1].length.times {print "#{char}"}
#		  else
#			  char = 0
#		  z[1].length.times {print "#{char}"}
#		  end
		  #z[1].length.times {print "#{char}"}
		  

	  }
	  print "\n"
  }
end

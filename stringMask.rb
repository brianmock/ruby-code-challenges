ARGV.each do|file|
  array = Array.new
  File.open(file).readlines.map do |line|
    array << line.split(" ")
  end
#  print array
  array.each {|x| 
	  0.upto(x[1].to_s.length - 1) { |y|
		  #print x[1][y]
		  if x[1][y] == "1"
			  print x[0][y].upcase
		  else print x[0][y].downcase
		  end
	  }
	  print "\n"
  }


end

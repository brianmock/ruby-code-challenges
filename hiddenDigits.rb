ARGV.each do|file|
  array = Array.new
  File.open(file).readlines.map do |line|
	  array << line
  end
          0.upto(array.count - 1) {|g| 
		  if array[g].index(/[0123456789abcdefghij]/, 0) == nil
			  puts "NONE"
		  else
			  array[g].split("").map{|x| 
	    case x
	    when "a" then print 0
	    when "b" then print 1
	    when "c" then print 2
	    when "d" then print 3
	    when "e" then print 4
	    when "f" then print 5
	    when "g" then print 6
	    when "h" then print 7
	    when "i" then print 8 
	    when "j" then print 9 
	    when "0","1","2","3","4","5","6","7","8","9" then print x
	    when "\n" then print "\n"
	    else nil
	    end
	  }
		  end
	  }
  end

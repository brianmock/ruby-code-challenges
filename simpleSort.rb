class Float
	def signif(signs)
		Float("%.#{signs}g" % self)
	end
end


ARGV.each do|file|
  array = Array.new
    File.open(file).readlines.map do |line|
      array << line.split.map(&:to_s)
    end

    0.upto(array.count - 1) do |row|
#    array.each do |row|
	    h = Hash[array[row].map { |v| [v, (v.to_f*1000).to_i] } ]
	    array2 = Array.new
	    out = "#{h.keys.sort {|a,b| h[b] <=> h[a]}.reverse}" + "\n"
	    print out.gsub(/\[/, "").gsub(/\"/, "").gsub(/\,/, "").gsub(/\]/, "")


	    #	    0.upto(row.count - 1) do |column|
		    
	    end
    end 


#  0.upto(array.count - 1) { |x| print array[x].sort }

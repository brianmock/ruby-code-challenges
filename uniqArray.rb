array = Array.new
File.open(ARGV[0]).each do |line|
	array << line.gsub(/\n/,"").split(",")
end
#y = ""
#array.each {|x| y =  "#{x.uniq}" + "\n" 
#	print y.gsub(/\[/, "").gsub(/\"/, "").gsub(/\]/, "").gsub(/ /,"")
#}
array.each {|x| print  "#{x.uniq.join(",")}" + "\n" }

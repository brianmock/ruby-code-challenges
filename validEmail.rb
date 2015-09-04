ARGV.each do|file|
  array = Array.new
  File.open(file).readlines.map do |line|
    array << line.to_s.gsub(/\n/,"")
  end
  #print array

  array.each {|x| 
	if x == ""
		nil
	elsif (x[-4..-1] == "\.com" || x[-4..-1] == "\.org" || x[-4..-1] == "\.edu" || x[-4..-1] == "\.gov") && (x.count("\@") == 1)
		  puts "true"
	else
		  puts "false"
	end
  }
end


ARGV.each do|file|
  array = Array.new
  File.open(file).readlines.map do |line|
    array << line.to_s.gsub(/\n/,"")
  end
  #print array

  email_regex = %r{^[0-9a-z][0-9a-z.+]+[0-9a-z]@[0-9a-z][0-9a-z.-]+[0-9a-z]$}xi

  array.each {|x| 
	if x == ""
		nil
	elsif (x =~ email_regex) == 0
		  puts "true"
	else
		  puts "false"
	end
  }
end


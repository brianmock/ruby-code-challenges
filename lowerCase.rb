ARGV.each do|file|
    File.open(file).readlines.map do |line|
      print line.downcase
    end

end
			

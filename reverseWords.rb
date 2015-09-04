ARGV.each do|file|
  array = Array.new
  File.open(file).readlines.map do |line|
    array << line.split(" ").map(&:to_s) unless line.split(" ").map(&:to_s) == []
  end
  array.each {|x| print "#{x.reverse.join(" ")}" + "\n" }
end

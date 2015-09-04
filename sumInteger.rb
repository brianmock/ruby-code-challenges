ARGV.each do|file|
  array = Array.new
      File.open(file).readlines.map do |line|
        array << line.split.map(&:to_i)
      end
      array.flatten!
      0.upto(array.count - 1) { |x|
	      array2 = Array.new
	      array2 << (array[x].to_s.split("").map(&:to_i))
	      array2.flatten!
	      puts array2.inject(0) {|sum,int| sum + int }
      }
end


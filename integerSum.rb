ARGV.each do|file|
  array = Array.new
    File.open(file).readlines.map do |line|
      array << line.split.map(&:to_i)
    end
    array.flatten!
    print array.inject(0){|sum,int| sum + int }
end

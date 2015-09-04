ARGV.each do|file|
  array = Array.new
  File.open(file).readlines.map do |line|
    puts line.to_i.to_s(2).count("1")
  end
end

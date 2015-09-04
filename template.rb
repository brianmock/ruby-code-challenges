ARGV.each do|file|
  array = Array.new
  File.open(file).readlines.map do |line|
    array << line.split(" ")
  end
  print array
end

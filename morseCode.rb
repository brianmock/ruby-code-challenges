morse_dict = Hash[
	"a" => ".-",
	"b" => "-...",
	"c" => "-.-.",
	"d" => "-..",
	"e" => ".",
	"f" => "..-.",
	"g" => "--.",
	"h" => "....",
	"i" => "..",
	"j" => ".---",
	"k" => "-.-",
	"l" => ".-..",
	"m" => "--",
	"n" => "-.",
	"o" => "---",
	"p" => ".--.",
	"q" => "--.-",
	"r" => ".-.",
	"s" => "...",
	"t" => "-",
	"u" => "..-",
	"v" => "...-",
	"w" => ".--",
	"x" => "-..-",
	"y" => "-.--",
	"z" => "--..",
	" " => " ",
	"1" => ".----",
	"2" => "..---",
	"3" => "...--",
	"4" => "....-",
	"5" => ".....",
	"6" => "-....",
	"7" => "--...",
	"8" => "---..",
	"9" => "----.",
	"0" => "-----",
]


ARGV.each do|file|
	array = Array.new
	File.open(file).readlines.map do |line|
		array << line.split("  ")
	end
	array2 = Array.new
#	print array
#	array.each {|x| x.each {|y| print y.split(" ").map{|d| morse_dict.key(d).upcase} } } 
#	puts " "
	0.upto(array.count - 1) { |a| 0.upto(array[a].count - 1) {|b| 
		if b == array[a].count - 1
			print "#{array[a][b].split(" ").map{|d| morse_dict.key(d).upcase}.join}" + "\n"
		else print "#{array[a][b].split(" ").map{|d| morse_dict.key(d).upcase}.join}" + " "
		end
	}
	}
#	print array2
#	array2.each {|z| 
#		z.each {|a| 
#			print morse_dict.key(a).upcase
#		} 
#		print "\n"
#	} 
end

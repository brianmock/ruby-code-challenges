def sum_over_50(arr)
	  if arr.reject{|x| x <= 50}.inject{|y,z| y + z} != nil
		  puts arr.reject{|x| x <= 50}.inject{|y,z| y + z}
	  else puts 0
	  end
end

sum_over_50([29, 52, 77, 102])
sum_over_50([5, 11, 50])
sum_over_50([4, 8, 15, 16, 23, 42])
sum_over_50([300, 22, 1, 55, 42])

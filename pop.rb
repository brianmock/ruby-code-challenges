class Queue
	def initialize(arr)
		@arr = arr
	end

	def pop(*idx) 
		@arr.shift *idx
	end

	def push(elem)
		@arr.push(*elem) == @arr
	end
	
	def to_a
		@arr
	end
end

queue = Queue.new([5, 6, 7, 8])

queue.pop
puts queue
queue.pop
puts queue
queue.push([4, 2])
puts queue
queue.pop(2)
puts queue
queue.to_a
puts queue

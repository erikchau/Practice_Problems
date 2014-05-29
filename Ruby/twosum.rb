def two_sum(array)
	has_pair = false
	array.each do |x|
		next_position = array.index(x)+1
		array[next_position..-1].each do |checker|
			if x + checker == 0
				has_pair = true
			end
		end
	end
	has_pair
end

p two_sum([0,14,341,1234,432])
p two_sum([-4,4123,1234,124,12,412,4])
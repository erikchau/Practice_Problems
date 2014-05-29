def twosum(arr)
	has = false
	arr.each_with_index do |x,idx1|
		arr.each_with_index do |y,idx2|
			if x + y == 0 && idx1!=idx2
				has = true
			end
		end
	end
	has
end

p twosum([123,12,34,323,4565,4,-4])
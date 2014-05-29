def my_uniq(arr)
	uniq_arr = []
	arr.each do |thing|
		uniq_arr << thing unless uniq_arr.include?(thing)
	end
	uniq_arr
end

p my_uniq([1, 2, 1, 3, 3])
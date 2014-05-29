def my_uniq(arr)
	uniq_chars = []
	arr.each do |thing|
		uniq_chars << thing unless uniq_chars.include?(thing)
	end
	uniq_chars
end

p my_uniq([1,2,3,4,1,2,3,4,5,6,7])
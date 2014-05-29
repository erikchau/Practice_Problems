def subsets(str)
	subset_strings = []
	str.split('').each_with_index do |letter1,index1|
		i = index1
		while i  < str.length
			subset_strings << str[index1..i]
			i +=1
		end
	end
subset_strings
end


p subsets("boobs")	
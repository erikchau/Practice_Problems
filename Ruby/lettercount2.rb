def lettercount(str)
	counts = {}
	str.split('').each do |letter|
	next if letter == ' '
		counts[letter] = 0 unless counts.include?(letter)
		counts[letter] += 1
	end
counts
end


p lettercount('where is my car dude')
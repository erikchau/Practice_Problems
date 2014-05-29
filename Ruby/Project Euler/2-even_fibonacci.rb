#while below 4,000,000 will find sum of all even fibonacci numbers
i = 1
even_sum = 0
previous_value = 1

while i<=4000000
current = i
	even_sum += i if i%2 == 0
	i = i + previous_value
	previous_value = current	
end
puts even_sum
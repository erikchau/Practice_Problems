puts 'Please enter a year.'
year1 = gets.chomp.to_i

puts 'Now please enter a second year'
year2 = gets.chomp.to_i

counter = year1

while counter <= year2
	if counter%100 == 0
		if counter%400 == 0
			puts counter
			counter = counter + 1
		else
			counter = counter + 1
		end
	elsif counter%4 == 0
		puts counter
		counter = counter + 1
	else
		counter = counter + 1
	end
	
	if counter == year2
		puts counter
		break
	end
end
rod1 = [1,2,3,4,5]
rod2 = []
rod3 = []

puts "Welcome to Towers of Hanoi! The goal of this game is simple. You must move all numbers from rod1 to either rod2 or rod3. There are only 3 simple rules:"
puts '1. You can only move 1 number at a time.'
puts '2. Each move consists of taking the top most (or smallest) number for a rod and placing it on the top of another rod.'
puts '3. You can only place a number on the top of a rod if it is smaller than the current top most number of that rod.'
puts
puts
puts 
puts

while rod2!=[1,2,3,4,5] && rod3!=[1,2,3,4,5]
	
	
	
	puts "rod1 = #{rod1}"
	puts "rod2 = #{rod2}"
	puts "rod3 = #{rod3}"
	puts "Please select a rod to remove a disc from."
	removed_from = gets.chomp
	while removed_from != 'rod1' && removed_from != 'rod2' && removed_from != 'rod3' 
		puts "Error. Please select rod1, rod2, or rod3."
		removed_from = gets.chomp
	end
	
	
	allowedremove = false
	while !allowedremove
		if removed_from == 'rod1' && rod1.first != nil
			removed = rod1.shift
			allowedremove = true
		elsif removed_from == 'rod2' && rod2.first != nil
			removed = rod2.shift
			allowedremove = true
		elsif removed_from == 'rod3' && rod3.first != nil
			removed = rod3.shift
			allowedremove = true
		end
		
		if allowedremove == false
			puts "Error, there is nothing to remove from that rod. Please choose a new rod"
				removed_from = gets.chomp
			while (removed_from != 'rod1' && removed_from != 'rod2' && removed_from != 'rod3')
				puts "Error. Please select rod1, rod2, or rod3."
				removed_from = gets.chomp
			end
		end
		
	end
	
	
	puts "rod1 = #{rod1}"
	puts "rod2 = #{rod2}"
	puts "rod3 = #{rod3}"
	puts "Please select a rod to add a disc to."
		add_to = gets.chomp
	while (add_to != 'rod1' && add_to != 'rod2' && add_to != 'rod3')
		puts "Error. Please select rod1, rod2, or rod3."
		add_to = gets.chomp
	end
		
	allowed = false
	while !allowed
		if add_to == 'rod1' && (rod1.first == nil || rod1.first > removed)
			rod1.unshift removed
			allowed = true
		elsif add_to == 'rod2' && (rod2.first == nil || rod2.first > removed)
			rod2.unshift removed
			allowed = true
		elsif add_to == 'rod3' && (rod3.first == nil || rod3.first > removed)
			rod3.unshift removed
			allowed = true
		end
		if allowed == false
			puts "Error, that move is not allowed. Please choose a new rod"
				add_to = gets.chomp
			while (add_to != 'rod1' && add_to != 'rod2' && add_to != 'rod3')
				puts "Error. Please select rod1, rod2, or rod3."
				add_to = gets.chomp
			end
		end
	end
	
	
	
end
	
puts	
puts
puts
puts
puts
puts "rod1 = #{rod1}"
puts "rod2 = #{rod2}"
puts "rod3 = #{rod3}"
puts "Congrats! You beat the game!"
	
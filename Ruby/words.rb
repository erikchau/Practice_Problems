words = []
while true
	puts 'Please enter a word.'
	words.push  gets.chomp

	if words.last == ''
	puts words.sort
	break
	end
end
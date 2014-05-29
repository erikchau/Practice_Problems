def prime(number)
	is_prime = true
	(2...number).each do |num|
		return false if number%num == 0
	end
	is_prime
end



largest_prime = 0
(2...13195).each do |number|
	largest_prime = number if 13195%number == 0 && prime(number) 
end

puts largest_prime
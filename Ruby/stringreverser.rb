# takes a string and reverses it

def string_reverser(stringer)
	string_split = stringer.split("")
	reversed = []
	(string_split.length).times do
		reversed.push (string_split.pop)
	end
	return reversed.join
end



p string_reverser('hello world')
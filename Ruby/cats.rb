def cats(num)
	arr = [0]*100
	
	(1..100).each do |round|
		arr.each_with_index do |cat,idx|
			pos = idx + 1
			if pos % round == 0
				if arr[idx] == 0
					arr[idx] = 1
				else arr[idx] = 0
				end
			end
		end
	end
arr
end

p cats(100)
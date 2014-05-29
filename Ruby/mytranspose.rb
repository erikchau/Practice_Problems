def my_transpose(array)
	num_rows = array.size
	num_cols = array.size.size
	
	transposed_array = []
	
	x= 0
	num_cols.times do
		y = 0
		new_row = []
		num_rows.times do
			value = array[y][x]
			y+=1
			new_row<<value
		end
		x+=1
		transposed_array << new_row
	end
	
	
	transposed_array
	end
	
p my_transpose([[0, 1, 2],[3, 4, 5],[6, 7, 8]])

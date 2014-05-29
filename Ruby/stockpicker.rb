def stockpicker(forecast)
	largest_diff = 0
	days = []
	forecast.each do |price1|
		forecast[(forecast.index(price1)+1)...forecast.length].each do |price2|
			if price2-price1 > largest_diff
				largest_diff = price2-price1
				days = [forecast.index(price1), forecast.index(price2)]
			end
		end
	end
	days
end

p stockpicker([1,1234,43156,53,1234,654,999999])
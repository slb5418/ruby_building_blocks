def stock_picker(arr)

	if arr.index(arr.min).to_i < arr.index(arr.max).to_i
		return [arr.index(arr.min), arr.index(arr.max)]
	end

	profit = 0
	buy_low = 0
	sell_high = 0

	arr.each_with_index do |x, day_x|
		arr.each_with_index do |y, day_y| 
			break if y == x
			if x-y > profit
				profit = x-y
				sell_high = day_x
				buy_low = day_y
			end
		end
	end
	return [buy_low,sell_high]

end

puts stock_picker([17,3,6,9,15,8,6,1,10]) 
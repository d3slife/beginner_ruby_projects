def stock_picker(array)
	length = array.length
	odds = 0
	buy_day = 0
	sell_day = 0
	
	length.times do |step|
		buy = array[step]
		(length - step - 1).times do |inner_step|
			sell = array[inner_step + step + 1]
			if (odds < sell - buy)
				odds = sell - buy
				buy_day = step
				sell_day = inner_step + step + 1
			end
		end
	end
	puts "The best day for purchase is #{buy_day}. For selling - #{sell_day}"
end

stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])
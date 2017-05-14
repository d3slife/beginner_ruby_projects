# Asks user to type required information in
# Defining a method because its prior to caesar_cipher

def main
	puts "Please, enter a string which you want to cipher!"
	user_string = gets.chomp
	puts "Please, enter positive number"
	user_number = gets.chomp.to_i

	caesar_cipher(user_string, user_number)
end

# Caesar cipher iterates through each symbol passing it to wrapper

def caesar_cipher(text, step)
	text.length.times do |number|
		current_symbol = text[number]
		text[number] = caesar_wrapper(current_symbol, step)
	end
	puts text
end

# Checks if we have to wrap from 'Z' to 'A' / 'z' to 'a'
# "A" ASCII value is 65 / "a" ASCII value is 97
# "Z" ASCII value is 90 / "z" ASCII value is 122

def caesar_wrapper(symbol, step)
	upcase_range = (65..90)
	downcase_range = (97..122)
	
	if (upcase_range === symbol.ord)
		if (symbol.ord + step > upcase_range.end)
			new_ascii_value = upcase_range.begin + (symbol.ord + step - 1) % upcase_range.end
			return new_ascii_value.chr
		else
			return (symbol.ord + step).chr
		end
	end
	
	if (downcase_range === symbol.ord)
		if (symbol.ord + step > downcase_range.end)
			new_ascii_value = downcase_range.begin + (symbol.ord + step - 1) % downcase_range.end
			return new_ascii_value.chr
		else
			return (symbol.ord + step).chr
		end
	end
	
	return symbol
end

main
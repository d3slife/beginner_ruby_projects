dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]
test_string = "Howdy partner, sit down! How's it going?"

def substrings(string, dictionary)
	frequency_table = Hash.new
	
	dictionary.each do |element|
		string.downcase!
		occurrences = string.scan(/#{element}/).length
		if (occurrences > 0)
			frequency_table[element] = occurrences
		end
	end
	
	puts frequency_table
end

substrings(test_string, dictionary)
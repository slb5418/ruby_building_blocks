def substrings(phrase, arr)

	substring_hash = Hash.new(0)

	# search the phrase with regex for items in arr
	arr.each do |substring|
		occurences = phrase.scan(/#{substring}/i).length 
		substring_hash[substring] = occurences if occurences > 0		
	end
	return substring_hash
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
print substrings("below", dictionary)
print substrings("Howdy partner, sit down! How's it going?", dictionary)





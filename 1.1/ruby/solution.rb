# Implement an algorithim to determine if a string has all unique characters.

text = "abcdef"

def is_unique(str)
	track = {}

	str.each_char do |chr|
		if track[chr].nil?
			track[chr] = true
		else
			return false
		end
	end

	return true
end

puts is_unique(text)
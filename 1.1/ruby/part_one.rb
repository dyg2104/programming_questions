# Implement an algorithim to determine if a string has all unique characters.

def is_unique(str)
	track = {}

	str.each_char do |chr|
		return false if track[chr] == 1
		track[chr] = 1
	end

	return true
end

text = "abcdefe"
puts is_unique(text)

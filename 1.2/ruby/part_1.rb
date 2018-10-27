# Given two strings, write a method to decide if one is a permutation of the other.

# Using ruby sort methods

def permutation?(str1, str2)
	return str1.chars.sort == str2.chars.sort
end

# puts permutation?('abc', 'caz')

# Using custom sort method

def merge_sort(chrs)
	return chrs if chrs.length <= 1

	midpoint = chrs.length / 2

	left = merge_sort(chrs[0..midpoint-1])
	right = merge_sort(chrs[midpoint..-1])

	arr = []

	while left.length > 0 && right.length > 0
		if left.first < right.first
			arr << left.shift
		else
			arr << right.shift
		end
	end

	arr + left + right
end

def permutation_using_sort?(str1, str2)
	first = merge_sort(str1.chars)
	second = merge_sort(str2.chars)

	return first == second
end

puts permutation_using_sort?('abc', 'cab')

# create an array, set the correct index in the array to true for every character that appears, compare arrays.
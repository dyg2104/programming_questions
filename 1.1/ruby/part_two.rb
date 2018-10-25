# What if you cannot use additional data structures?

def merge_sort(chrs)
	# base case
	return chrs if chrs.length <= 1

	midpoint = chrs.length / 2

	left = chrs[0..midpoint-1]
	left_chrs = merge_sort(left)

	right = chrs[midpoint..-1]
	right_chrs = merge_sort(right)

	arr = []

	while left_chrs.length > 0 && right_chrs.length > 0
		if left_chrs.first <= right_chrs.first
			arr << left_chrs.shift
		else
			arr << right_chrs.shift
		end
	end

	while left_chrs.length > 0
		arr << left_chrs.shift
	end

	while right_chrs.length > 0
		arr << right_chrs.shift
	end

	arr
end

def is_unique(str)
	str_sorted = merge_sort(str.split(""))
	str_sorted_len = str_sorted.length

	str_sorted_len.times do |x|
		return false if str_sorted[x] == str_sorted[x+1]
	end

	return true
end

text = "dcba"
puts is_unique(text)
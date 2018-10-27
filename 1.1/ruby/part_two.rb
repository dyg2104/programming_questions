# What if you cannot use additional data structures?

def merge(str)
	merge_sort(str, 0, str.length)
end

# "dcbaab"

	# 6 / 2 = 3

	# 0-2             3-5


	# "dcb"              "aab"

    # 3 / 2 = 1          3 / 2 = 1

    # 0-0, 1-2           0-0, 1-2


    # "d",  "cb"         "a", "ab"


         # 2 / 2 = 1

         # 0-0 , 1-1

         # 0, 2 

def merge_sort(str, left, right)
	# base case
	return if left == right

	midpoint = (right - left) / 2

	# left = chrs[0..midpoint-1]
	# left_chrs = merge_sort(left)
	merge_sort(str, left, left + midpoint - 1)
	
	# right = chrs[midpoint..-1]
	# right_chrs = merge_sort(right)
	merge_sort(str, left + midpoint, right - 1)

	left_ptr = left
	right_ptr = left + midpoint

	"asle"

	"as"  "le"

	"as"   "el"

	aesl

	while left_ptr < midpoint && right_ptr < right
		# puts "#{str} #{left} #{right}"
		if str[left_ptr] <= str[right_ptr]
			# str[left_ptr], str[right_ptr] = str[right_ptr], str[left_ptr]
			left_ptr += 1
		else
			str[right_ptr], str[left_ptr] = str[left_ptr], str[right_ptr]
			right_ptr += 1
		end
	end

	# while left_chrs.length > 0
	# 	arr << left_chrs.shift
	# end

	# while right_chrs.length > 0
	# 	arr << right_chrs.shift
	# end

	# arr

	str
end

def is_unique(str)
	str_sorted = merge(str)
	puts str_sorted

	str_sorted.length.times do |x|
		return false if str_sorted[x] == str_sorted[x+1]
	end

	return true
end

text = "dcbaab"
puts is_unique(text)
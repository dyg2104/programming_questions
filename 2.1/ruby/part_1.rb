# Write code to remove duplicates from an unsorted link list.

class Node
	attr_accessor :next, :value

	def initialize(value)
		@value = value
	end
end

class LinkedList
	attr_accessor :head

	def initialize()
		@head = nil
	end

	def insert(value)
		if @head.nil?
			@head = Node.new(value)
			return
		end

		ptr = @head

		until ptr.next.nil?
			ptr = ptr.next
		end

		ptr.next = Node.new(value)
	end

	def remove_duplicates()
		ctr = {}

		ptr = @head

		until ptr.nil?
			if ctr[ptr.value].nil?
				ctr[ptr.value] = 1
			else
				ctr[ptr.value] += 1
			end

			ptr = ptr.next
		end

		ptr = @head

		until ptr.next.nil?
			value = ptr.next.value

			if ctr[value] > 1
				ptr.next = ptr.next.next
				ctr[value] -= 1
			else
				ptr = ptr.next
			end
		end
	end

	def print_values()
		ptr = @head

		until ptr.nil?
			puts ptr.value
			ptr = ptr.next
		end
	end
end

list = LinkedList.new()
list.insert(1)
list.insert(2)
list.insert(2)
list.insert(2)
list.insert(2)
list.insert(3)
list.insert(10)
list.insert(2)
list.insert(2)
list.insert(4)
list.insert(3)
list.insert(25)
list.insert(25)
list.insert(25)
list.insert(10)
list.insert(100)
list.print_values()
puts "----"
list.remove_duplicates()
list.print_values()
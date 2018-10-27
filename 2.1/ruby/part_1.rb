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

		ptr = head

		until ptr.next.nil?
			ptr = ptr.next
		end

		ptr.next = Node.new(value)
	end
end
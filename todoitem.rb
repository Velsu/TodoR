#defining a class for items in the todo list
class TodoItem
	attr_reader :name
	def initialize(name)
		@name = name
		@complete = false
	end

#default method for printing stuff on screen
	def to_s
		if complete?
			"[C] #{name}"
		else
			"[I] #{name}"
		end
	end

#checks if item was completed or not
	def complete?
		@complete
	end

#changes the state of the item from incomplete to complete
	def set_complete!
		@complete = true
	end

#changes the state of the item from complete to incomplete
	def set_incomplete!
		@complete = false
	end
end

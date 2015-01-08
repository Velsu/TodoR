#Making todoitem class available to use
require "./todoitem"

#defining the todo list class to create a list of items
class TodoList
	attr_reader :name, :todo_items

	def initialize(name)
		@name = name
		@todo_items = []
	end

#method for adding new items to the list (array)
	def add_item(name)
		todo_items.push(TodoItem.new(name))
	end

#method to remove items from the list based on index
	def remove_item(name)
		if index = find_index(name)
			todo_items.delete_at(index)
			return true
		else
			return false
		end
	end

#method for setting items status from incomplete to complete based on methods from todoitem.rb
	def set_complete(name)
		if index = find_index(name)
			todo_items[index].set_complete!
			return true
		else
			return false
		end
	end

#method for finding index based on item name and using it in methods above
	def find_index(name)
		index = 0
		found = false

		todo_items.each do |item|
			if item.name == name
			found = true
		end
		if found
			break
		else
			index += 1
		end
	end
		if found
			return index
		else
			return nil
		end
	end

end

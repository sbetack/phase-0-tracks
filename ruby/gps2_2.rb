# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # turn the string into an array (using split)
  # set default quantity - default quantity is 1
  # print the list to the console (call the print method)
# output: hash where keys = food and values = quantity

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps: add item name to list as key 
# 		 and quantity as value (set value to one if not provided)
# output: Maybe the updated hash? Not 100% needed.

# Method to remove an item from the list
# input: list, item name
# steps: delete the key from the hash
# output: Maybe the updated hash? 

# Method to update the quantity of an item
# input: list, item name, new quantity
# steps: update the corresponding value to the item key
# output: Maybe the updated hash?

# Method to print a list and make it look pretty
# input: list
# steps: iterate through the list and update a string, it'll be nice.
# output: the string

def create_list(list_string)
	items = list_string.split(" ")
	grocery_list = {}
	items.each do |item|
		grocery_list[item.downcase] = 1
	end
	print_list(grocery_list)
	grocery_list
end

def add_item(list, item, value = 1)
	list[item.downcase] = value
end

def remove_item(list, item)
	list.delete(item.downcase)
end

def update_quantity(list, item, new_quant)
	list[item] = new_quant
end

def print_list(list)
	puts "Your grocery list is below:"
	list.each do |item, quantity|
		puts "#{item.capitalize}: #{quantity}"
	end
	puts "Happy shopping!"

end



new_list = create_list("carrots apples cereal pizza")
add_item(new_list, "avocado", 6)
# print_list(new_list)
p "*******************************"
p add_item(new_list, "grape")
p "*******************************"
# print_list(new_list)
remove_item(new_list, "carrots")
# print_list(new_list)
update_quantity(new_list, "apples", 10)
print_list(new_list)



###########WORKING WITH CLASS##############

class GroceryList
	attr_reader :list

	def initialize(list_string)
		items = list_string.split(" ")
		@list = {}
		items.each do |item|
			@list[item.downcase] = 1
		end
		print_list
		@list
	end

	def add_item(item, value = 1)
		@list[item.downcase] = value
	end

	def remove_item(item)
		@list.delete(item.downcase)
	end

	def update_quantity(item, new_quant)
		@list[item] = new_quant
	end

	def print_list
		puts "Your grocery list is below:"
		@list.each do |item, quantity|
			puts "#{item.capitalize}: #{quantity}"
		end
		puts "Happy shopping!"

	end
end


new_list = GroceryList.new("carrots apples cereal pizza")
new_list.add_item("avocado", 6)
# print_list(new_list)
p "*******************************"
p new_list.add_item("grape")
p "*******************************"
# print_list(new_list)
new_list.remove_item("carrots")
# print_list(new_list)
new_list.update_quantity("apples", 10)
new_list.print_list



=begin
	
What did you learn about pseudocode from working on this challenge?
   I learned that it is helpfun to break up pseudocode into inputs, steps, and outputs. I also learned that it is helpful to capitalize keywords(IF, ELSE, WHILE) and use proper indentation.

What are the tradeoffs of using arrays and hashes for this challenge?
   It was a good idea to use hashes because we were able to keep the food item and it's quantity grouped together.
What does a method return?
   A method returns the last thing that was evaluated inside of it.
What kind of things can you pass into methods as arguments?
	You can pass other data structures into arguments or even other methods.
How can you pass information between methods?
	you can pass information between methods by naming the outputs of methods as variables or by using classes.
What concepts were solidified in this challenge, and what concepts are still confusing?
	This challenged helped me understand how to work with multiple methods together. However, I am still a little confused about how much driver code is too much and/or what can just be in driver code versus what needs to be in a method.

	
end

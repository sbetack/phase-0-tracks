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
		grocery_list[item] = 1
	end
	print_list(grocery_list)
	grocery_list
end

def add_item(list, item, value = 1)
	list[item] = value
end

def remove_item(list, item)

end

def print_list(list)
	puts "the list will print here"
	p list
end


new_list = create_list("carrots apples cereal pizza")
add_item(new_list, "avocado", 6)
print_list(new_list)
add_item(new_list, "grape")
print_list(new_list)
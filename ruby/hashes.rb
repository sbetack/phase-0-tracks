=begin
set  client hash equal to an empty hash
Ask client a question about themselves
create a key value pair in the client hash
continue for each question
print client hash
ask client if all of the categories are correct
if not ask for the category that needs to be changed
	ask for a new response
update key value pair in hash
print hash
=end

client = {}
puts "What is your name?"
name = gets.chomp
client[:name] = name
puts "What is your address?"
address = gets.chomp
client[:address] = address
puts "How old are you?"
age = gets.chomp
age = age.to_i
client[:age] = age
puts "How many children do you have?"
num_of_children = gets.chomp
num_of_children = num_of_children.to_i
client[:num_of_children] = num_of_children
puts "Do you have a dog?(yes/no)"
has_dog = gets.chomp
client[:has_dog] = has_dog
puts "What is your preferred decor theme?"
decor_theme = gets.chomp
client[:decor_theme] = decor_theme
puts "What are some of your favorite pieces in your house?"
fav_pieces = gets.chomp
client[:fav_pieces] = fav_pieces
puts "What's a decor you hate?"
hated_decor = gets.chomp
client[:hated_decor] = hated_decor

p client
puts "Does the information above look correct? (yes/no)"
is_info_correct = gets.chomp

until is_info_correct == "yes"
	puts "Which category do you need to edit? (one at a time please!)"
		edit_category = gets.chomp
	puts "What would you like to record under the category #{edit_category}?"
		new_response = gets.chomp
		edit_category = edit_category.to_sym
		if (edit_category == :age) || (edit_category ==	:num_of_children)
			new_response = new_response.to_i
		end
	client[edit_category] = new_response
	p client
	puts "Does the information above look correct? (yes/no)"
	is_info_correct = gets.chomp
end

age = nil
puts "What is the hamster's name?"
hamster_name = gets.chomp
puts "How loud is the hamster on a scale from 1 to 10."
volume_level = gets.chomp
volume_level = volume_level.to_i
puts "What is the fur color?"
fur_color = gets.chomp
puts "Is the hamster adoptable (yes/no)?"
is_adoptable = gets.chomp
puts "What is the hamster's age (in years)?"
age = gets.chomp
age = age.to_f

user_answer = nil
until user_answer == "yes"
	puts "Is your hamster's name #{hamster_name} (yes/no)?"
	user_answer = gets.chomp
	if user_answer == "no"
		puts "What is the hamster's name?"
		hamster_name = gets.chomp
	end
end
user_answer = nil
until user_answer == "yes"
	puts "Is your hamster's volume level #{volume_level} (yes/no)?"
	user_answer = gets.chomp
	if user_answer == "no"
		puts "How loud is the hamster on a scale from 1 to 10."
		volume_level = gets.chomp
		volume_level = volume_level.to_i
	end
end
user_answer = nil
until user_answer == "yes"
	puts "Is your hamster's fur color #{fur_color} (yes/no)?"
	user_answer = gets.chomp
	if user_answer == "no"
		puts "What is the fur color?"
		fur_color = gets.chomp
	end
end
user_answer = nil
until user_answer == "yes"
	puts "You answered #{is_adoptable} to the question is your hamster adoptable. Is this still true (yes/no)?"
	user_answer = gets.chomp
	if user_answer == "no"
		puts "Is the hamster adoptable (yes/no)?"
		is_adoptable = gets.chomp
	end
end
user_answer = nil
until user_answer == "yes"
	if age == 0.0
		puts "You were not able to give us an approximation of your hamster's age. Is that still true? (yes/no)"
		user_answer = gets.chomp
		if user_answer == "no"
			puts "What is the hamster's age (in years)?"
			age = gets.chomp
			age = age.to_f
		end
	else
		puts "Is your hamster's age #{age} (yes/no)?"
		user_answer = gets.chomp
		if user_answer == "no"
			puts "What is the hamster's age (in years)?"
			age = gets.chomp
			age = age.to_f
		end
	end
end
if age == 0.0
	age = "unknown"
end
puts "Hamster's name is #{hamster_name}. The volume level is #{volume_level}. The fur color is #{fur_color}. When asked if the hamster was adoptable the user said #{is_adoptable}. The hamster is #{age} years old."










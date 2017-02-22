=begin
PSUEDOCODE NOT USING MAP
Ask spy for name
save the name in a variable
create an consonants array
create a vowel array

split the name by its space
reverse the array

create a new variable for the fake name set it equal to an empty string
loop through the spy name array
	if letter is a vowel 
		change it to the next vowel
		shovel it into the fake name variable
	if the letter is a consonant change it to the next consonant
		change it to the next consonant
		shovel it into the fake name variable
	elsif 
		shovel " " into the fake name

PSUEDOCODE USING MAP
Ask spy for name
save the name in a variable
create an consonants string
create a vowel string

split the name by its space
reverse the array


Set what is below equal to a variable
Use map to loop through the array
	if letter is a vowel 
		check the vowel index of the vowels string
		change the vowel to the next index
	if the letter is a consonant 
		change it to the next consonant
set fake name equal to new array joined with a space
return fake name

=end

def fake_name_maker ()
	names_and_fake_names = {}
	puts "What's the spy's name? (enter 'quit' to end session)"
	spy_name_str = gets.chomp
	until spy_name_str == "quit"
		vowels = 'aeiou'
		consonants = 'bcdfghjklmnpqrstvwxyz'

		spy_name_arr = spy_name_str.split(' ')
		spy_name_arr.reverse!

		fake_name_array = spy_name_arr.map do |word|
			fake_name_word = ""
			word.each_char do |letter|
				letter.downcase
				if vowels.include?(letter)
					i = vowels.index(letter)
					if i == 4
						new_vowel = vowels[0]
					else
						new_vowel = vowels[i+1]
					end
					fake_name_word << new_vowel
				elsif consonants.include?(letter)
					i = consonants.index(letter)
					if i == 20
						new_consonant = consonants[0]
					else
						new_consonant = consonants[i+1]
					end
					fake_name_word << new_consonant
				end
			end
			fake_name_word.capitalize!
		end
		fake_name_str = fake_name_array.join(' ')
		p fake_name_str
		names_and_fake_names[spy_name_str] = fake_name_str
	puts "What's the spy's name? (enter 'quit' to end session)"
	spy_name_str = gets.chomp
	end

	names_and_fake_names.each do |key, value| 
		p value + " is really " + key
	end
end


fake_name_maker()







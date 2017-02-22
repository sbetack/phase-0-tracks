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
	if the letter is a consonant change it to the next consonant
		change it to the next consonant
		shovel it into the fake name variable
set fake name equal to new array joined with a space
return fake name

=end

puts "What's the spy's name?"
spy_name = gets.chomp
vowels = 'aeiou'
consonants = 'bcdfghjklmnpqrstvwxyz'

spy_name_arr = spy_name.split(' ')
spy_name_arr.reverse!

spy_name_arr.map { |letter|
	if vowels.include?(letter)
		index = vowels.index(letter)
		letter = vowels[index+1]
	elsif consonants.include?(letter)
		index = consonants.index(letter)
		letter = consonants[index+1]
	end
}













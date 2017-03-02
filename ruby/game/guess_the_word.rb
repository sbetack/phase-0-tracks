class GuessTheWord
	attr_reader :is_over
	attr_accessor :phrase, :letter_guess_count
	
	def initialize
		@phrase = ''
		@letter_guess_count = 0
		@is_over = false
		
	end

	def calc_max_letter_guesses
		max_guess_count = (@phrase.length / 3) + 1
	end

	def phrase_contains_letter_guess(letter_guess)
		@phrase.split('').each do |letter|
			if letter == letter_guess
				return true
			end
		end
		false
	end

	def returns_phrase_with_letter_guess(letter_guess)
		phrase_with_letter_guesses = ''
		@phrase.split('').each do |letter|
			if letter == letter_guess
				phrase_with_letter_guesses += letter_guess
			elsif letter != ' '
				phrase_with_letter_guesses += '_ '
			else 
				phrase_with_letter_guesses += '  '
			end
		end	
		phrase_with_letter_guesses 
	end

	def user_2_wins(user_2_guess)
		@phrase == user_2_guess
	end
end



#############user-interface############
puts "Hey welcome to the two-player game GUESS THE WORD!! Pick a player-one and a player-two"
new_game = GuessTheWord.new

puts "Shh!!! Player-one, enter you're secret word or phrase."
new_game.phrase = gets.chomp
new_game.calc_max_letter_guesses
while !new_game.is_over
	puts "Hey Player-two! Guess a letter that is included in Player-one's secret phrase"
	letter_guess = gets.chomp
	new_game.letter_guess_count += 1
	if new_game.phrase_contains_letter_guess(letter_guess)
		new_game.returns_phrase_with_letter_guess(letter_guess)
		puts "Would you like to guess the word? (yes or no)"
			wants_to_guess_word = gets.chomp
		if wants_to_guess_word == 'yes'
			puts "What is your word guess?"
			word_guess = gets.chomp
			if user_2_wins(word_guess)
				puts "Congrats, you got it right! The word is #{new_game.phrase}"
			else
				puts "Nope, sorry the word was #{new_game.phrase}"
			end
			new_game.is_over = true
		end
	else
		puts "Sorry, there is no #{letter_guess} in this phrase."
	end
end




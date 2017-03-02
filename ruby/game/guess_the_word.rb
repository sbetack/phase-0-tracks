class GuessTheWord
	attr_reader :letter_guess_count, :is_over
	attr_accessor :phrase
	
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

while !new_game.is_over
	puts "Hey Player-two! Guess a letter that is included in Player-one's secret phrase"
	letter_guess = gets.chomp



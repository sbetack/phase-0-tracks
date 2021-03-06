class GuessTheWord
	attr_accessor :phrase, :letter_guess_count, :is_over, :all_letter_guesses
	
	def initialize(phrase='', all_letter_guesses=[])
		@phrase = phrase
		@phrase_with_letter_guesses = ''
		@all_letter_guesses = all_letter_guesses
		@letter_guess_count = 0
		@is_over = false
	end

	def calc_max_letter_guesses
		max_guess_count = (@phrase.length / 3) + 1
	end

	def phrase_contains_letter_guess(letter_guess)
		@letter_guess_count +=1
		@phrase.split('').each do |letter|
			if letter == letter_guess
				return true
			end
		end
		false
	end

	def letter_guess_is_new(letter_guess)
		if !@all_letter_guesses.include?(letter_guess)
			@all_letter_guesses << letter_guess
			return true
		else
			return false
		end
	end

	def returns_phrase_with_letter_guess
		@phrase_with_letter_guesses = ''
		@phrase.split('').each do |letter|
			if @all_letter_guesses.include?(letter)
				@phrase_with_letter_guesses += letter
			elsif letter != ' '
				@phrase_with_letter_guesses += '_'
			else 
				@phrase_with_letter_guesses += ' '
			end
		end
		p @phrase_with_letter_guesses 
	end

	def user_2_wins(user_2_guess)
		@phrase == user_2_guess
	end

end



#############user-interface############
new_game = GuessTheWord.new()
puts "Hey welcome to the two-player game GUESS THE WORD!! Pick a player-one and a player-two"

puts "Shh!!! Player-one, enter you're secret word or phrase."
new_game.phrase = gets.chomp.downcase
puts "\n"*300
max_letter_count = new_game.calc_max_letter_guesses
puts "Hey Player-two! Based on the length of this word/phrase you have #{max_letter_count} letter guesses before you must guess the word! Are you ready!?!"
user_answer = gets.chomp.downcase
while new_game.letter_guess_count < max_letter_count
	puts "Guess a letter that is included in player-one's secret word/phrase"
	letter_guess = gets.chomp
	if new_game.phrase_contains_letter_guess(letter_guess)
		if new_game.letter_guess_is_new(letter_guess)
			new_game.returns_phrase_with_letter_guess
			puts "Would you like to guess the word? (yes or no)"
			wants_to_guess_word = gets.chomp
			if wants_to_guess_word == 'yes'
				puts "What is your word guess?"
				word_guess = gets.chomp
				if new_game.user_2_wins(word_guess)
					puts "Congrats, you got it right! The word is '#{new_game.phrase}'"
					break
				else
					puts "Nope, sorry the word was '#{new_game.phrase}'"
					break
				end
			end
		else
			puts "Oops, you already guessed '#{letter_guess}'"
			new_game.letter_guess_count -= 1
		end
	else
		puts "Sorry, there is no '#{letter_guess}' in this phrase."
	end
	if max_letter_count-new_game.letter_guess_count > 0
		puts "You have #{max_letter_count-new_game.letter_guess_count} letter guess(es) left!"
	else
		puts "You are out of letter guesses. You have one chance to guess the word!"
		word_guess = gets.chomp
		if new_game.user_2_wins(word_guess)
			puts "Congrats, you got it right! The word/phrase is '#{new_game.phrase}'"
		else
			puts "Nope, sorry the word/phrase was '#{new_game.phrase}'"
		end
	end
end




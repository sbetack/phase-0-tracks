require_relative 'guess_the_word'

describe GuessTheWord do 
	let(:game) { GuessTheWord.new }
	game.phrase = "hello"
	it "Calculates the max letter guess count" do
		expect(game.calc_max_letter_guesses("hello")).to eq 2
	end 

	it "Checks phrase for letter guess when true" do
		expect(game.phrase_contains_letter_guess("hello", "o")).to eq true 
	end

	it "Checks phrase for letter guess when false" do
		expect(game.phrase_contains_letter_guess("hello", "z")).to eq false
	end

	it "Returns the phrase with the correct letter guesses" do 
		expect(game.returns_phrase_with_letter_guess("hello", "l")).to eq "_ _ ll_ "
	end

	it "Returns true if the word guess is correct" do
		expect(game.user_2_wins("hello", "hello")).to eq true
	end

	it "Returns false if the word guess is incorrect" do
		expect(game.user_2_wins("hello", "yello")).to eq false
	end
end
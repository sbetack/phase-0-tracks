#Release 0 and 1
class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(int)
    int.times {puts "Woof!"}
  end

  def roll_over
    puts "*rolls over*"
  end

  def dog_years(human_age)
    dog_age = human_age * 7
    puts dog_age
  end

  def human_mode
    puts "*stands on hind legs*"
  end

  def initialize 
    puts "Initializing new puppy instance..."
  end

end
 

Roo = Puppy.new

Roo.fetch("ball")

Roo.speak(5)

Roo.roll_over

Roo.dog_years(2)

Roo.human_mode

Charlie = Puppy.new

#Release 2
class Football_player

  def initialize
    puts "Initializing new football player instance..."
  end

  def tackle
    puts "*tackles*"
  end

  def catch
    puts "*catches ball*"
  end

  def run
    puts "*runs*"
  end
  football_players = []

  for num in 1..50
    player = Football_player.new
    football_players.push(player)
  end

  p football_players


  football_players.each do |player|
    player.tackle
    player.catch
    player.run
  end

end




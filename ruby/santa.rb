class Santa
  def initialize(gender, ethnicity)
   puts "Initializing Santa instance..."
    @gender = gender
    @ethnicity = ethnicity
    
  end

  def speak
    puts "Ho, ho ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type} cookie!"
  end

  reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
  
  age = 0

  pirate_santa = Santa.new("female", "white")
  
  p pirate_santa

  pirate_santa.speak
  pirate_santa.eat_milk_and_cookies("chocolate chip")



  santas = []
  santas << Santa.new("agender", "black")
  santas << Santa.new("female", "Latino")
  santas << Santa.new("bigender", "white")
  santas << Santa.new("male", "Japanese")
  santas << Santa.new("female", "prefer not to say")
  santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
  santas << Santa.new("N/A", "N/A")
  p santas
  
end


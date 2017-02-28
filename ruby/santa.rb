class Santa
  def initialize(gender, ethnicity)
   puts "Initializing Santa instance..."
    @gender = gender
    @ethnicity = ethnicity
    @age = 0
  end
  def celebrate_birthday
    age += 1
  end
  
  def speak
    puts "Ho, ho ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type} cookie!"
  end

  reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]

  #getter methods 
  def age 
    @age
  end

  def ethnicity
    @ethnicity
  end
  #setter method
  def gender=(new_gender)
    @gender = new_gender
  end

#####DRIVER CODE######
  pirate_santa = Santa.new("female", "white")
  
  p pirate_santa

  pirate_santa.speak
  pirate_santa.eat_milk_and_cookies("chocolate chip")


  genders =['female', 'male', 'bigender', 'gender fluid', 'n/a']
  ethnicities = ['white', 'black', 'latino', 'asian', 'american indian', 'eskimo']

  santas = []
  20.times do
    random_i_genders = rand(0..4)
    random_i_ethinicites = rand(0..5)
    new_santa = Santa.new(genders[random_i_genders], ethnicities[random_i_ethinicites])
    santas << new_santa
  end
  p santas
end

pirate_santa = Santa.new("female", "white")
p pirate_santa.ethnicity
pirate_santa.gender=("male")
p pirate_santa

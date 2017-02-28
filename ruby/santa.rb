class Santa
  attr_reader :age, :ethnicity
  attr_accessor :gender, :age
  def initialize(gender, ethnicity)
    @gender = gender
    @ethnicity = ethnicity
    @age = 0
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
  end
  #####INSTANCE METHODS#####
  def celebrate_birthday
    age += 1
  end
  
  def speak
    puts "Ho, ho ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type} cookie!"
  end

  def get_mad_at(reindeer_name)
    @reindeer_ranking.delete(reindeer_name)
    @reindeer_ranking << reindeer_name
  end

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
######################################################################################

#####DRIVER CODE######

  pirate_santa = Santa.new("female", "white")
  

  pirate_santa.speak
  pirate_santa.eat_milk_and_cookies("chocolate chip")
  pirate_santa.age
  p "********************************************************************************"
  p pirate_santa
  pirate_santa.get_mad_at("Dancer")
  p "********************************************************************************"
  p pirate_santa

    genders =['female', 'male', 'bigender', 'gender fluid', 'transgender']
    ethnicities = ['white', 'black', 'latino', 'asian', 'american indian', 'eskimo']

######################################################################################

#loop to populate Santa class
  1000.times do |i|
    random_gender = genders.sample
    random_ethinicity = ethnicities.sample
    new_santa = Santa.new(random_gender, random_ethinicity)
    new_santa.age= rand(1..140)
    puts "Santa #{i+1}: #{new_santa.gender}, #{new_santa.ethnicity}, #{new_santa.age}"
  end

######################################################################################

end

#####DRIVER CODE TO TEST SETTER/GETTER METHODS######
p "**********************************************************************************"
test_santa = Santa.new("female", "white")
p test_santa
test_santa.gender = "male"
p "**********************************************************************************"
p test_santa
p "**********************************************************************************"
######################################################################################







class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(int)
    int.times {print "Woof! "}
  end

  def roll_over
    puts "*rolls over*"
  end

  def dog_years(human_age)
    dog_age = human_age * 7
    puts dog_age
  end

end

  

Roo = Puppy.new

Roo.fetch("ball")

Roo.speak(5)

Roo.roll_over

Roo.dog_years(2)
# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# This imports a file from the same directory
# Require would need a specific path for the file to import
require_relative 'state_data'

class VirusPredictor

  # Create a new VirusPredictor instance
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # Saves return values of predicted deaths and speed of spread in variables and calls inform_user with those variables as arguments
  def virus_effects
    deaths = predicted_deaths
    speed = speed_of_spread
    inform_user(deaths, speed)
  end

  private

  # Prints out report
  def inform_user(deaths, speed)
    puts "#{@state} will lose #{deaths} people in this outbreak and will spread across the state in #{speed} months.\n\n"
  end

  # Calculates predicted deaths based on population density
  def predicted_deaths
    # predicted deaths is solely based on population density
    case @population_density
    when (200..11000)
      num = 0.4
    when (150...200)
      num = 0.3
    when (100...150)
      num = 0.2
    when (50...100)
      num = 0.1
    else
      num = 0.05
    end
    number_of_deaths = (@population * num).floor

    # print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  # Calculates speed of spread based on population density
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    case @population_density
    when (200..11000)
      speed = 0.5
    when (150...200)
      speed = 1
    when (100...150)
      speed = 1.5
    when (50...100)
      speed = 2
    else
      speed = 2.5
    end

    # puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

STATE_DATA.each do |state, data|
  state_report = VirusPredictor.new(state, data[:population_density], data[:population])
  state_report.virus_effects
end 


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section

# What are the differences between the two different hash syntaxes shown in the state_data file?

#######   The outter hash has keys that are strings and a hash rocket is used to mapped all of the keys to their values (the inner hashes). The inner hashes have keys that are symbols, so they can be mapped to their values using a :.

# What does require_relative do? How is it different from require?

#######   require_relative takes the file that is being required and inserts it into the new file using just a single line of code. Require relative is used when the two files being linked are in the same directory. When using require you must specify the directory path.

# What are some ways to iterate through a hash?

#######    You can using .each, or .map to iterate through a hash.

# When refactoring virus_effects, what stood out to you about the variables, if anything?

#######   Originally it stood out to me that they were all attributes in the class.

# What concept did you most solidify in this challenge?

#######   The fact that attributes should never be taken in as parameters on instance methods because they are accessible throughout the class.





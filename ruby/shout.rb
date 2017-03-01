########STANDALONE VERSION##########
# module Shout
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end

#   def self.yelling_happily(words)
#     words.upcase + "!!!" + " :)"
#   end
  
#   p yell_angrily("are you fucking kidding me")
#   p yelling_happily("wahoo, this is awesome")

# end

#########MIXIN VERSION############
module Shout 

  def yell_angrily(words)
    words + "!!!" + " :("
  end

  def yelling_happily(words)
    words.upcase + "!!!" + " :)"
  end

end

class Taxi_driver
  include Shout
end

class Italian
  include Shout
end


taxi_driver = Taxi_driver.new
italian = Italian.new

p taxi_driver.yell_angrily("Get out of the fucking way")

p italian.yelling_happily("hello, how are you")
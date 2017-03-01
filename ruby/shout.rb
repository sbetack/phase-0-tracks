module Shout
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yelling_happily(words)
    words.upcase + "!!!" + " :)"
  end
  
  p yell_angrily("shit")
  p yelling_happily("wahoo, this is awesome")
  
end


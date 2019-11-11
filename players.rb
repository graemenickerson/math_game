# players.rb
# November 2019

class Players
  attr_accessor :lives,  :name

  def initialize(lives, num)
    @lives = lives
    @name = "Player #{num}"
  end

  def lose_life
    @lives -= 1
  end

end
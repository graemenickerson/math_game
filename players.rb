# players.rb
# November 2019

class Player
  attr_accessor :lives

  def initialize(lives)
    @lives = lives
  end

  def loose_life
    @lives -= 1
  end

end
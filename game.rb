# two_o_player_math_game.rb
# November 2019

require './players.rb'

class game 
  attr_accessor :question, :current_player

  def initialize()
    @question = nil
    @current_player = 1;
  end

  
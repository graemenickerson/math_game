# two_o_player_math_game.rb
# November 2019


class Game 
  attr_accessor :current_player, :answer

  def initialize(player)
    @current_player = player.name;
  end

  def random_number
    rand 1..20
  end

  def gen_question
    num1 = random_number()
    num2 = random_number()
    self.answer=num1+num2
    question = "#{current_player} : What is #{num1} + #{num2} equal?"
  end

  def check_answer(user_ans)
    if user_ans.to_i == answer
      result = "YES! You are correct."
    else
      result = "Seriously? No!"
    end
    result
  end

end
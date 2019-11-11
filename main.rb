# main.rb
# November 2019

require './players'
require './game'
require './user_input'

@player1 = Players.new(3, 1)
@player2 = Players.new(3, 2)

@current = @player1

def switch_player(current_player)
  if current_player == @player1
    @current = @player2
  else
    @current = @player1
  end
end

while @player1.lives > 0 && @player2.lives > 0
  game_turn = Game.new(@current)
  
  puts game_turn.gen_question()

  player_answer = user_input()

  ans_check = game_turn.check_answer(player_answer)

  puts "#{@current.name}: #{ans_check}"

  if ans_check == "Seriously? No!"
    @current.lose_life()
  end
  
  if @player1.lives > 0 && @player2.lives > 0
    puts "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3"
    puts '----- New Turn -----'
    switch_player(@current)
  else
    switch_player(@current)
    puts "#{@current.name} wins with a score of #{@current.lives}/3"
    puts '----- Game Over -----'
    puts '  Good Bye!'
  end
end
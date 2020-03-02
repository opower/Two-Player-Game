require './player.rb'
require './question.rb'

class Game

  def initialize
    player1 = Player.new(1)
    player2 = Player.new(2)
  end

  def check_lives(player)
    if player.lives == 0
      return true
    end
    false
  end

  def turn(player)
    question = Question.new
    puts question
  end

end

game1 = Game.new

game1.turn
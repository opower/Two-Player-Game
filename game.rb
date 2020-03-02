require './player.rb'
require './question.rb'

class Game

  attr_accessor :player1, :player2

  def initialize
    @player1 = Player.new(1)
    @player2 = Player.new(2)
  end

  def check_lives(player)
    if player.lives == 0
      return true
    end
    false
  end

  def ask
    question = Question.new
    puts question.game_question
    puts question.answer
  end

end
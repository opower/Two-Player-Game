require './player.rb'
require './question.rb'

class Game

  attr_accessor :player1, :player2, :turn

  def initialize
    @player1 = Player.new(1)
    @player2 = Player.new(2)
    @turn = 1
  end

  def check_lives(player)
    if player.lives == 0
      return true
    end
    false
  end

  def game_play(player)
    question1 = Question.new
    puts "---- NEW TURN ----"
    puts "Player #{player.number}: #{question1.question}"
    print "> "
    player_answer = gets.chomp
    if player_answer.to_i == question1.answer
      puts "You are correct!"
    else 
      puts "Wah! You are incorrect!"
      player.minus
    end
    puts "P1: #{player1.lives}/3 vs P2: #{player2.lives}/3"
  end

  def play 
    while true
      self.turn % 2 == 1 ? player = player1 : player = player2
      game_play(player)
      self.turn += 1
      turn == true ? self.turn == false : self.turn == true
      if check_lives(player1)
        puts '---- GAME OVER ----'
        puts "Player 2 wins with a score of #{player2.lives}/3"
        exit(0)
      elsif check_lives(player2)
        puts '---- GAME OVER ----'
        puts "Player 1 wins with a score of #{player1.lives}/3"
        exit(0)
      end
    end
  end

end
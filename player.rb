class Player

  attr_accessor :lives, :number

  def initialize(number)
    @number = number
    @lives = 3
  end

  def minus
    self.lives -= 1
  end

  def to_s
    number
  end

end




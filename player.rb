class Player

  attr_accessor :lives

  def initialize(number)
    @number = number
    @lives = 3
  end

  def minus
    self.lives -= 1
  end

end




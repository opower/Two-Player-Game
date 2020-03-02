class Player

  attr_reader :lives
  attr_writer :lives

  def initialize(number)
    @number = number
    @lives = 3
  end

  def minus
    self.lives--
  end

end




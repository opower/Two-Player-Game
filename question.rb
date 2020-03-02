class Question

  attr_accessor :first, :second, :operator, :answer

  def initialize
    @first = first
    @second = second
    @operator = operator
    @answer = answer
  end

  def game_question
    self.first = rand(1...20)
    self.second = rand(1...20)
    self.operator = rand(1..2) == 1 ? '+' : '-'
    operator == '+' ? self.answer = first + second : self.answer = first - second
    return "What does #{first} #{operator} #{second} equal?"
  end

end


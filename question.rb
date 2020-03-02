class Question

  attr_accessor :first, :second, :operator, :answer, :question

  def initialize
    @first = first
    @second = second
    @operator = operator
    @answer = answer
    @question = question
  end

  def question
    self.first = rand(1...20)
    self.second = rand(1...20)
    self.operator = rand(1..2) == 1 ? '+' : '-'
    operator == '+' ? self.answer = first + second : self.answer = first - second
    self.question = "What does #{first} #{operator} #{second} equal?"
  end

end


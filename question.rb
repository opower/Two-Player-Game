class Question

  def initialize
    @first = first
    @second = second
    @operator = operator
  end

  def random20
    rand(1...20)
  end

  def operator
    ops = rand(1..4)
    if ops == 1
      return '+'
    elsif ops == 2
      return '-'
    elsif ops == 3
      return 'x'
    else 
      return '/'
  end

  def question
    self.first = random20
    self.second = random20
    self.operator = operator
    return puts 'What does #{self.first} #{self.operator} #{self.second} equal?'
  end

  def answer
    if self.operator == '+'
      return self.first + self.second
    elsif self.operator == '-'
      return self.first - self.second
    elsif self.operator == 'x'
      return self.first * self.second
    else 
      return self.first / self.second
  end


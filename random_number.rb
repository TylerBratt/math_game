class Number
  attr_accessor :number

  def initialize
    @number = rand(1..20)
  end

  def roll
    self.number = rand(1..20)
  end
end

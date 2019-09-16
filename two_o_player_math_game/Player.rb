class Player

  attr_accessor :name, :score

  def initialize(name)
    @name = name
    @score = 0
  end

  def addScore()
    @score += 1
  end

end
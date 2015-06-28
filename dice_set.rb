class DiceSet
  def roll(dice)
    @dice = dice
    @values = []
    @values = @dice.times.map { 1 + rand(5) } 
  end

  def values
    @values
  end
end


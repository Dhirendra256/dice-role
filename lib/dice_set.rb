require_relative 'roll_result'
require_relative 'die'
class DiceSet
  attr_reader :dice

  def initialize(dice = [])
    @dice = dice
  end

  def add_die(sides)
    @dice << Die.new(sides)
  end

  def roll_all
    rolls = @dice.map(&:roll)
    RollResult.new(@dice, rolls)
  end
end

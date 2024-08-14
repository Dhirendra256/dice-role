class RollResult
  attr_reader :dice, :rolls

  def initialize(dice, rolls)
    @dice = dice
    @rolls = rolls
  end

  def total
    @rolls.sum
  end

  def description
    dice_description = @dice.map.with_index do |die, index|
      "Die #{index + 1} (#{die.sides}-sided): #{@rolls[index]}"
    end.join(', ')
    "Rolled: #{dice_description}. Total: #{total}"
  end
end

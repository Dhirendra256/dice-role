require 'rspec'
require_relative '../lib/dice_set'

RSpec.describe DiceSet do
  it 'rolls all dice and returns a RollResult' do
    dice_set = DiceSet.new([Die.new(6), Die.new(8)])
    result = dice_set.roll_all

    expect(result).to be_a(RollResult)
    expect(result.rolls.size).to eq(2)
  end
end

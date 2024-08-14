require 'rspec'
require_relative '../lib/die'
require_relative '../lib/roll_result'

RSpec.describe RollResult do
  it 'returns the correct total of rolls' do
    dice = [Die.new(6), Die.new(8)]
    rolls = [3, 7]
    result = RollResult.new(dice, rolls)

    expect(result.total).to eq(10)
  end

  it 'returns a descriptive string of the roll' do
    dice = [Die.new(6), Die.new(8)]
    rolls = [3, 7]
    result = RollResult.new(dice, rolls)

    expect(result.description).to include('Die 1 (6-sided): 3')
    expect(result.description).to include('Die 2 (8-sided): 7')
    expect(result.description).to include('Total: 10')
  end
end

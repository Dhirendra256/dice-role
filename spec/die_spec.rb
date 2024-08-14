require 'rspec'
require_relative '../lib/die'

RSpec.describe Die do
  it 'rolls a value between 1 and the number of sides' do
    die = Die.new(6)
    100.times do
      roll = die.roll
      expect(roll).to be_between(1, 6).inclusive
    end
  end
end

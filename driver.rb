require_relative 'lib/dice_set'

dice_set = DiceSet.new

puts "Welcome to the Dice Rolling Simulator!"
puts "How many dice would you like to roll?"

num_dice = gets.chomp.to_i

num_dice.times do |i|
  puts "Enter the number of sides for die #{i + 1}:"
  sides = gets.chomp.to_i
  dice_set.add_die(sides)
end

result = dice_set.roll_all
puts result.description

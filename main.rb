require './player'
require './game'

p1 = Player.new("Player 1", 3)
p2 = Player.new("Player 2", 3)

puts "Welcome to Math!! Press enter to begin."
input = gets.chomp

g = Game.new(1, p1, p2)
puts g.question_builder
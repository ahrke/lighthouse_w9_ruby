require './Player'
require './Game'

puts "Welcome to our deathmatch! I mean...math competition"
puts "First player, what is your name?"
player1 = Player.new(gets.chomp())

puts "Second player, what is your name?"
player2 = Player.new(gets.chomp())

puts "All right, let's start this bish!"
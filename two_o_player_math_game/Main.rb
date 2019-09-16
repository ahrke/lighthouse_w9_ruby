require './Player'
require './Game'

puts "Welcome to our deathmatch! I mean...math competition"
puts "First player, what is your name?"
player1 = Player.new(gets.chomp())

puts "Second player, what is your name?"
player2 = Player.new(gets.chomp())

puts "All right, let's start this bish!\n\n"

def gameCycle(p1, p2)
  include Game
  rounds = 3

  rounds.times do |round|
    puts "\n#{p1.name} you ready? let's go"
    questionGenerator(p1)
    puts "\n#{p2.name} it's your turn..."
    questionGenerator(p2)
  end

  puts "\n\n------------------"

  winner = calculateWinner(p1, p2)
  puts "Final Scores:"
  puts "  #{p1.name}: #{p1.score}"
  puts "  #{p2.name}: #{p2.score}"
  puts "------------------"
  puts "\n\n------------------"
  puts winner ?
    "#{winner} you won!! Awesome stuff!" :
    "Ahh...you guys tied. Looks like no one wins the $1,000,000 prize"
  puts "------------------\n\n"
end

gameCycle(player1, player2)
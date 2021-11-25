moves = ['rock', 'paper', 'scissors']

print "Pick your move \n>"
# player
# p_move = gets.chomp

p_move = moves.sample
puts "You played #{p_move}"

# computer
c_move = moves.sample
puts "Computer played #{c_move}"
# p_move == c_move

# case [p_move, c_move]
# #user wins
# when ['rock', 'scissors'], ['paper', 'rock'], ['scissors', 'paper']
#     puts "You win!"
# when ['scissors', 'paper'], ['rock', 'scissors'], ['paper', 'rock']
#     puts "Computer wins!"
# when ['scissors', 'scissors'], ['rock', 'rock'], ['paper', 'paper']
#     puts "It's a tie!"
# else
#     puts "Unexpected input"
# end

win_scenarios = [
    ['rock', 'scissors'], 
    ['paper', 'rock'], 
    ['scissors', 'paper']
]

lose_scenarios = [
    ['scissors', 'rock'], 
    ['rock', 'paper'], 
    ['paper', 'scissors']
]

this_game = [p_move, c_move]

puts(
if p_move == c_move
    "It's a tie!"
elsif win_scenarios.include?(this_game)
    "You win!"
elsif lose_scenarios.include?(this_game)
    "Computer wins!"
else
    "Unexpected input"
end)
# p rand(10)

def shuffle_and_pop(array)
    array.shuffle!.pop
end

players = ["Duncan", "Kevan", "Tara", "Bobby", "Jane"]

# winner = players[rand(players.length)] # 0 < x < 5

# winner = players.sample

# puts "And the winner is... #{winner}!"

# players = {
#     3 => "Duncan",
#     5 => "Kevan",
#     8 => "Tara",
#     4 => "Bobby",
#     1 => "Jane",
#  }

# players.default = "nobody"

#  winning_number = rand(10) + 1 # 1 <= x <= 10

#  puts "And the winner is... #{winner}!!!"

winner = shuffle_and_pop(players)

# puts players.shuffle!.pop
# p players.include?(winner)

puts "And the winner is... #{winner}!!!"

runner_up = shuffle_and_pop(players)

puts "And the runner up prize goes to... #{runner_up}!!"

p players

# Refactoring

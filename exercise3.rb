require './player.rb'

player1 = Player.new(0, 0, 0)
player2 = Player.new(0, 0, 0)

puts "Player 1 collects treasure 20 times"
20.times do
  player1.collect_treasure
end
puts "It should add 2 lives to the 5 existing"
puts player1.player_info(1, 0, 0)


puts "Player 1 looses 10 health points"
player1.do_battle(10)
puts "It should loose 1 live"
puts player1.player_info(1, 0, 0)

puts "Player 1 looses 6 lives"
7.times do
  player1.do_battle(10)
end
puts "It should restart"
puts player1.player_info(1, 1, 1)

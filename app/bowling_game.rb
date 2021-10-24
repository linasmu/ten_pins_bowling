puts 'Enter Player 1 name'

loop do
  @player1 = gets.chomp
  if @player1.empty?
    puts 'Please enter name'
  else
    break
  end
end

puts 'Enter Player 2 name'

loop do
  @player2 = gets.chomp
  if @player2.empty?
    puts 'Please enter name'
  else
    break
  end
end

puts 'START OF BOWLING GAME'

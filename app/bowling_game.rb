class BowlingGame
  def initialize
    @player1_score = 0
    @player2_score = 0
    @frame = 0
  end

  def start_game
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
    player1_turn
  end

  def player1_turn
    return game_result if @frame >= 10

    puts "#{@player1} first turn:"
    player1_points_1 = gets.chomp.to_i
    @player1_score += player1_points_1
    return player2_turn if player1_points_1 == 10
    puts "#{@player1} second turn:"
    player1_points_2 = gets.chomp.to_i
    @player1_score += player1_points_2
    @frame += 0.5
    player2_turn
  end

  def player2_turn
    puts "#{@player2} first turn:"
    player2_points_1 = gets.chomp.to_i
    @player2_score += player2_points_1
    return player1_turn if player2_points_1 == 10
    puts "#{@player2} second turn:"
    player2_points_2 = gets.chomp.to_i
    @player2_score += player2_points_2
    @frame += 0.5
    player1_turn
  end

  def game_result
    puts "#{@player1} score is #{@player1_score} and #{@player2} score is #{@player2_score}"
  end
end

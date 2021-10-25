class BowlingGame
  def initialize
    @player1_score = []
    @player2_score = []
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
    return game_result if @frame >= 9

    frame_score = []
    puts "#{@player1} first turn:"
    frame_score << gets.chomp.to_i
    @player1_score << frame_score and return player2_turn if frame_score[0] == 10
    puts "#{@player1} second turn:"
    frame_score << gets.chomp.to_i
    @player1_score << frame_score
    player2_turn
  end

  def player2_turn
    frame_score = []
    puts "#{@player2} first turn:"
    frame_score << gets.chomp.to_i
    @player2_score << frame_score and return player1_turn if frame_score[0] == 10
    puts "#{@player2} second turn:"
    frame_score << gets.chomp.to_i
    @player2_score << frame_score
    @frame += 1
    player1_turn
  end

  def game_result
    puts "#{@player1} score is #{@player1_score} and #{@player2} score is #{@player2_score}"
  end
end

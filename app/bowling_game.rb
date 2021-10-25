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
    player1_final_score = final_score(@player1_score).sum
    player2_final_score = final_score(@player2_score).sum
    puts "#{@player1} score is #{player1_final_score} and #{@player2} score is #{player2_final_score}"
  end

  def final_score(player_score)
    player_score.each_with_index.map do |score, i|
      if score[0] == 10
        if !player_score[i + 1].nil?
          score[0] += player_score[i + 1][0]
        end
        
        if !player_score[i + 1].nil? && !player_score[i + 1][1].nil?
          score[0] += player_score[i + 1][1]
        elsif !player_score[i + 2].nil?
          score[0] += player_score[i + 2][0]
        end
        score[0]
      elsif score[0] + score[1] == 10 && !player_score[i + 1].nil? && !player_score[i + 1][0].nil?
        score = score.sum + player_score[i + 1][0]
        score
      else
        score.sum
      end
    end
  end
end

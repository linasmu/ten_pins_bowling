require_relative '../app/bowling_game'

describe BowlingGame do
  it 'scores a perfect game' do
    game = BowlingGame.new
    score = game.final_score([[10], [10], [10], [10], [10], [10], [10], [10], [10], [10]])
    expect(score.sum).to eq(270)
  end

  it 'scores only zeroes' do
    game = BowlingGame.new
    score = game.final_score([[0,0], [0,0], [0,0], [0,0], [0,0], [0,0], [0,0], [0,0], [0,0], [0,0]])
    expect(score.sum).to eq(0)
  end
end

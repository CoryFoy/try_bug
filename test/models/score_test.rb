require 'test_helper'

class ScoreTest < ActiveSupport::TestCase

  def setup
    @game = 'A'
    @local = LocalScore.create!(game: @game, score: 1000)
    @official = OfficialScore.create!(game: @game, score: 700)
    @score = Score.new(@game)
  end

  test "can pull local scores when different" do
    assert_equal(1000, @score.score)
  end
  test "can pull official scores when same as local" do
    @local.score = 700
    @local.save!
    updated_score = Score.new(@game)
    assert_equal(700, updated_score.score)
  end
  test "can try local scores" do
    assert_equal(1000, @score.try(:score))
  end
end

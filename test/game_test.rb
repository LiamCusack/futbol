require_relative './test_helper'
require './lib/game'

class GameTest < Minitest::Test

  def setup
    @game = Game.new("2012030221", "20122013", "Postseason", "5/16/13", "3", "6","2","3","Toyota Stadium","null")

  end

  def test_it_exists_and_has_attributes

  assert_instance_of Game, @game
  assert_equal 2012030221, @game.game_id
  assert_equal "20122013", @game.season
  assert_equal "Postseason", @game.type
  assert_equal "5/16/13", @game.date_time
  assert_equal 3, @game.away_team_id
  assert_equal 6, @game.home_team_id
  assert_equal 2, @game.away_goals
  assert_equal 3, @game.home_goals
  assert_equal "Toyota Stadium", @game.venue
  end

  def test_total_score
    assert_equal 5, @game.total_score
  end
end

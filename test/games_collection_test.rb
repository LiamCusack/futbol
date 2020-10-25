require_relative './test_helper'
require './lib/games_collection'
require 'CSV'

class GamesCollectionTest < Minitest::Test

  def setup
    @gamescollection = GamesCollection.new('./data/games_dummy.csv')
  end

  def test_it_exists

    assert_instance_of GamesCollection, @gamescollection
  end

  def test_first_game

    assert_instance_of Game, @gamescollection.games[0]
  end

  def test_all_games

    assert_equal 10, @gamescollection.games.length
  end
end
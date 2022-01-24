require "minitest/autorun"
require_relative "../../tile_bag.rb"

class TestPointsFor < Minitest::Test
  def test_confirm_point_values
    [:E, :A, :I, :O, :N, :R, :T, :L, :S, :U].each do |tile|
      assert_equal 1, TileBag.points_for(tile)
    end

    [:D, :G].each do |tile|
      assert_equal 2, TileBag.points_for(tile)
    end

    [:B, :C, :M, :P].each do |tile|
      assert_equal 3, TileBag.points_for(tile)
    end

    [:F, :H, :V, :W, :Y].each do |tile|
      assert_equal 4, TileBag.points_for(tile)
    end

    assert_equal 5, TileBag.points_for(:K)

    [:J, :X].each do |tile|
      assert_equal 8, TileBag.points_for(tile)
    end

    [:Q, :Z].each do |tile|
      assert_equal 10, TileBag.points_for(tile)
    end
  end
end

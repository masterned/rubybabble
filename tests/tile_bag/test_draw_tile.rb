require "minitest/autorun"
require_relative "../../tile_bag.rb"

class TestDrawTile < Minitest::Test
  def setup
    @tile_bag = TileBag.new
  end

  def test_has_proper_number_of_tiles
    98.times do
      assert !@tile_bag.empty?
      @tile_bag.draw_tile()
    end
    
    assert @tile_bag.empty?
  end

  def test_has_proper_tile_distribution
  end
end

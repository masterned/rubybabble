require "minitest/autorun"
require_relative "../../tile_bag.rb"

class TileBag::TestDrawTile < Minitest::Test
  def setup
    @tile_bag = TileBag.new
  end

  def test_has_proper_number_of_tiles
    98.times do
      assert !@tile_bag.empty?
      @tile_bag.draw_tile
    end
    
    assert @tile_bag.empty?
  end

  def test_has_proper_tile_distribution
    drawn_tiles = {:E=>12, :A=>9, :I=>9, :O=>8, :N=>6, :R=>6,
      :T=>6, :L=>4, :S=>4, :U=>4, :D=>4, :G=>3, :B=>2, :C=>2, :M=>2, :P=>2,
      :F=>2, :H=>2, :V=>2, :W=>2, :Y=>2, :K=>1, :J=>1, :X=>1, :Q=>1, :Z=>1
    }

    98.times do
      tile = @tile_bag.draw_tile
      drawn_tiles[tile] -= 1
    end

    drawn_tiles.each do |_, remaining|
      assert_equal 0, remaining
    end
  end
end

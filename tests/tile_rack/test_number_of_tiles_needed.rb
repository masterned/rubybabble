require 'minitest/autorun'
require_relative '../../tile_rack.rb'

class TileRack::TestNumberOfTilesNeeded < Minitest::Test
    def setup
        @tile_rack = TileRack.new
    end

    def test_empty_tile_rack_should_need_max_tiles
        assert_equal 7, @tile_rack.number_of_tiles_needed
    end

    def test_tile_rack_with_one_tile_should_need_max_minus_one_tiles
        @tile_rack.tiles = [:A]
        assert_equal 6, @tile_rack.number_of_tiles_needed
    end

    def test_tiles_rack_with_several_tiles_should_need_some_tiles
        @tile_rack.tiles = [:A, :I, :U, :E, :O]
        assert_equal 2, @tile_rack.number_of_tiles_needed
    end

    def test_that_full_tile_rack_doesnt_need_any_tiles
        @tile_rack.tiles = [:S, :P, :E, :N, :C, :E, :R]
        assert_equal 0, @tile_rack.number_of_tiles_needed
    end
end

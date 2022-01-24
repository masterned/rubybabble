require 'minitest/autorun'
require_relative '../../tile_group.rb'

class TileGroup::TestHand < Minitest::Test
    def setup
        @tile_group = TileGroup.new
    end

    def test_convert_empty_group_to_string
        assert_equal '', @tile_group.hand
    end

    def test_convert_single_tile_group_to_string
        @tile_group.tiles = [:A]
        assert_equal 'A', @tile_group.hand
    end

    def test_convert_multi_tile_group_to_string
        @tile_group.tiles = [:A, :B, :C]
        assert_equal 'ABC', @tile_group.hand
    end

    def test_convert_multi_tile_group_with_duplicates_to_string
        @tile_group.tiles = Array.new(3, :A)
        assert_equal 'AAA', @tile_group.hand
    end
end
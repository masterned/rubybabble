require 'minitest/autorun'
require_relative '../../tile_group.rb'

class TestAppend < Minitest::Test
    def setup
        @tile_group = TileGroup.new
    end

    def test_append_one_tile
        @tile_group.append :A
        assert_equal [:A], @tile_group.tiles
    end

    def test_append_many_tiles

    end

    def test_append_duplicate_tiles

    end
end
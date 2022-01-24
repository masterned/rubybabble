require 'minitest/autorun'
require_relative '../../tile_group.rb'

class TileGroup::TestAppend < Minitest::Test
    def setup
        @tile_group = TileGroup.new
    end

    def test_append_one_tile
        @tile_group.append :A
        assert_equal [:A], @tile_group.tiles
    end

    def test_append_many_tiles
        [:A, :I, :U, :E, :O].each do |tile|
            @tile_group.append tile
        end
        assert_equal [:A, :I, :U, :E, :O], @tile_group.tiles
    end

    def test_append_duplicate_tiles
        Array.new(3, :A).each do |tile|
            @tile_group.append tile
        end
        assert_equal [:A, :A, :A], @tile_group.tiles
    end
end
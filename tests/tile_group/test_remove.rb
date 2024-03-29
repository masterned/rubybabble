require 'minitest/autorun'
require_relative '../../tile_group.rb'

class TileGroup::TestRemove < Minitest::Test
    def setup
        @tile_group = TileGroup.new
    end

    def test_remove_only_tile
        @tile_group.tiles = [:A]
        @tile_group.remove :A

        assert_equal [], @tile_group.tiles
        assert @tile_group.tiles.empty?
    end

    def test_remove_first_tile_from_many
        @tile_group.tiles = [:A, :B, :C]
        @tile_group.remove :A

        assert_equal [:B, :C], @tile_group.tiles
    end

    def test_remove_last_tile_from_many
        @tile_group.tiles = [:A, :B, :C]
        @tile_group.remove :C

        assert_equal [:A, :B], @tile_group.tiles
    end

    def test_remove_middle_tile_from_many
        @tile_group.tiles = [:A, :B, :C]
        @tile_group.remove :B

        assert_equal [:A, :C], @tile_group.tiles
    end

    def test_remove_multiple_tiles
        @tile_group.tiles = [:A, :B, :C]
        @tile_group.remove(:A).remove(:C)

        assert_equal [:B], @tile_group.tiles
    end

    def test_make_sure_duplicates_are_not_removed
        @tile_group.tiles = Array.new(3, :A)
        @tile_group.remove(:A)

        assert_equal [:A, :A], @tile_group.tiles
    end
end

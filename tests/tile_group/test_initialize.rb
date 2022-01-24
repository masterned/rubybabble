require 'minitest/autorun'
require_relative '../../tile_group.rb'

class TestInitialize < Minitest::Test
    def setup
        @tile_group = TileGroup.new
    end

    def test_create_empty_tile_group
        assert @tile_group.tiles.empty?
    end
end

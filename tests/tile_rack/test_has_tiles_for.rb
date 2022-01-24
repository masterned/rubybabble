require 'minitest/autorun'
require_relative '../../tile_rack.rb'

class TileRack::TestHasTilesFor < Minitest::Test
    def setup
        @tile_rack = TileRack.new
    end

    def test_rack_has_needed_letters_when_letters_are_in_order_no_duplicates
        @tile_rack.tiles = [:G, :C, :A, :T, :R, :E, :P]
        assert @tile_rack.has_tiles_for? 'CAT'
    end

    def test_rack_has_needed_letters_when_letters_are_not_in_order_no_duplicates
        @tile_rack.tiles = [:G, :C, :A, :T, :R, :E, :P]
        assert @tile_rack.has_tiles_for? 'PART'
    end

    def test_rack_doesnt_contain_any_needed_letters
        @tile_rack.tiles = Array.new(7, :A)
        assert !(@tile_rack.has_tiles_for? 'WORLD')
    end

    def test_rack_contains_some_but_not_all_needed_letters
        @tile_rack.tiles = [:G, :C, :A, :T, :R, :E, :P]
        assert !(@tile_rack.has_tiles_for? 'TREK')
    end

    def test_rack_contains_a_word_with_duplicate_letters
        @tile_rack.tiles = [:H, :W, :O, :L, :L, :R, :E]
        assert @tile_rack.has_tiles_for? 'HELLO'
    end
    
    def test_rack_doesnt_contain_enough_duplicate_letters
        @tile_rack.tiles = [:N, :C, :A, :T, :R, :E, :P]
        assert !(@tile_rack.has_tiles_for? 'PATTERN')
    end
end

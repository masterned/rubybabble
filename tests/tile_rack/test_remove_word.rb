require 'minitest/autorun'
require_relative '../../tile_rack.rb'
require_relative '../../word.rb'

class TileRack::TestRemoveWord < Minitest::Test
    def setup
        @tile_rack = TileRack.new
    end

    def test_can_remove_a_word_whose_letters_are_in_order_on_the_rack
        @tile_rack.tiles = [:G, :C, :A, :T, :R, :E, :P]
        
        created_word = @tile_rack.remove_word 'CAT'
        
        assert_equal 'CAT', created_word.hand
        assert_equal [:G, :R, :E, :P], @tile_rack.tiles
    end

    def test_can_remove_a_word_whose_letters_are_not_in_order_on_the_rack
        @tile_rack.tiles = [:G, :C, :A, :T, :R, :E, :P]
        
        created_word = @tile_rack.remove_word 'TRACE'
        
        assert_equal 'TRACE', created_word.hand
        assert_equal [:G, :P], @tile_rack.tiles
    end

    def test_can_remove_word_with_duplicate_letters
        @tile_rack.tiles = [:T, :C, :A, :T, :R, :E, :S]
        
        created_word = @tile_rack.remove_word 'SCATTER'
        
        assert_equal 'SCATTER', created_word.hand
        assert_equal [], @tile_rack.tiles
    end

    def test_can_remove_word_without_removing_unneeded_duplicate_letters
    end
end

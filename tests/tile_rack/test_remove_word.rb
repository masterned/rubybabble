require 'minitest/autorun'
require_relative '../../tile_rack.rb'
require_relative '../../word.rb'

class TileRack::TestRemoveWord < Minitest::Test
    def setup
        @tile_rack = TileRack.new
    end

    def test_can_remove_a_word_whose_letters_are_in_order_on_the_rack
    end

    def test_can_remove_a_word_whose_letters_are_not_in_order_on_the_rack
    end

    def test_can_remove_word_with_duplicate_letters
    end

    def test_can_remove_word_without_removing_unneeded_duplicate_letters
    end
end

require 'minitest/autorun'
require_relative '../../word.rb'

class Word::TestScore < Minitest::Test
    def setup
        @word = Word.new
    end

    def test_empty_word_should_have_score_of_zero
        assert_equal 0, @word.score
    end

    def test_score_a_one_tile_word
        @word.tiles = [:A]
        assert_equal 1, @word.score
    end

    def test_score_a_word_with_multiple_different_tiles

    end

    def test_score_a_word_with_recurring_tiles

    end
end

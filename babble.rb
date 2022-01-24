require 'spellchecker'
require 'tempfile'

require_relative 'tile_rack.rb'

class Babble
    def initialize
        @tile_rack = TileRack.new
        @total_score = 0
    end

    def run
        user_input = ''

        until user_input == ':quit'
            puts "Guess a word: "
            user_input = gets.chomp
        end

        puts "Thanks for playing, total score: #{@total_score}"
    end
end

Babble.new.run

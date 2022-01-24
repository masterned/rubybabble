require 'spellchecker'
require 'tempfile'

require_relative 'tile_bag.rb'
require_relative 'tile_rack.rb'

class Babble
    def initialize
        @tile_bag = TileBag.new
        @tile_rack = TileRack.new
        @total_score = 0
    end

    def run
        user_input = ''

        until (user_input == ':quit' || @tile_bag.empty?)
            @tile_rack.number_of_tiles_needed().times {@tile_rack.append @tile_bag.draw_tile if !(@tile_bag.empty?)}

            puts "Tiles: #{@tile_rack.tiles.join(', ')}\n\n"

            print 'Guess a word: '
            user_input = gets.chomp
            puts ''
        end

        puts "Thanks for playing, total score: #{@total_score}"
    end
end

Babble.new.run

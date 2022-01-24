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

        until @tile_bag.empty?
            @tile_rack.number_of_tiles_needed().times {@tile_rack.append @tile_bag.draw_tile if !(@tile_bag.empty?)}

            puts "Tiles: #{@tile_rack.tiles.join(', ')}\n\n"

            print 'Guess a word: '
            user_input = gets.chomp
            puts ''

            break if user_input == ":quit"

            if !(Spellchecker::check(user_input.downcase)[0][:correct])
                puts "Not a valid word\n\n"
                puts "Current score: #{@total_score}\n\n"
                next
            end

            if !(@tile_rack.has_tiles_for? user_input.upcase)
                puts "Not enough tiles\n\n"
                puts "Current score: #{@total_score}\n\n"
                next
            end

            created_word = @tile_rack.remove_word(user_input.upcase)
            points = created_word.score
            puts "You made #{created_word.hand} for #{points} points\n\n"
            @total_score += points

            puts "Current score: #{@total_score}\n\n"
        end

        puts "Thanks for playing, total score: #{@total_score}"
    end
end

Babble.new.run

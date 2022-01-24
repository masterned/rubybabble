require_relative 'word.rb'

class TileRack < TileGroup
    def number_of_tiles_needed
        7 - tiles.length
    end

    def has_tiles_for? text
        temp_tiles = tiles.dup

        text.each_char do |char|
            tile_index = temp_tiles.find_index (char.to_sym)

            return false if tile_index == nil

            temp_tiles.delete_at tile_index
        end

        true
    end

    def remove_word text
        if has_tiles_for? text
            created_word = Word.new

            text.each_char do |char|
                remove char.to_sym

                created_word.append char.to_sym
            end

            return created_word
        end

        return nil
    end
end

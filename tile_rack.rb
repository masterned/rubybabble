class TileRack < TileGroup
    def number_of_tiles_needed
        7 - tiles.length
    end

    def has_tiles_for? text
    end

    def remove_word text
    end
end

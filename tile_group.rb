class TileGroup

    attr_accessor :tiles

    def initialize
        @tiles = []
    end

    def append tile
        @tiles << tile
    end

    def remove tile
        tile_index = @tiles.find_index tile

        if tile_index != nil
            @tiles.delete_at tile_index
        end
        
        self
    end

    def hand
    end
end

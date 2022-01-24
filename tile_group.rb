class TileGroup

    attr_accessor :tiles

    def initialize
        @tiles = []
    end

    def append tile
        @tiles << tile
    end

    def remove tile
        @tiles.delete_if {|group_tile| group_tile == tile}
    end

    def hand
    end
end

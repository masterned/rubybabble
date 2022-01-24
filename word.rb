require_relative 'tile_bag.rb'

class Word < TileGroup
    def initialize
        super
    end

    def score
        (tiles.collect {|tile| TileBag.points_for tile}).sum
    end
end

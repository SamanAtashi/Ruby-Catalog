require_relative './item'

class MusicAlbum < Item
    attr_accessor :on_spotify

    def initialize
        @on_spotify=true
    end
end

# temp = Item.new(12)

# p temp

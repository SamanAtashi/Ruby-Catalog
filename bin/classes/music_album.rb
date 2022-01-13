require_relative './item'

class MusicAlbum < Item
    attr_accessor :on_spotify

    def initialize
        @on_spotify=true
    end

    # private

    def can_be_archived?
        if (@archived && @on_spotify)
            return true
        else 
            return false
        end
    end
end

temp = Item.new(12)
temp2 = MusicAlbum.new

p temp
p temp2.can_be_archived?

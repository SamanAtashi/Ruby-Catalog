require_relative './item'

class MusicAlbum < Item
  def initialize(on_spotify, publish_date)
    super(publish_date)
    @on_spotify = on_spotify
  end

  def can_be_archived?
    super && @on_spotify
  end
end

# temp = Item.new(1999, archived:true)
# temp2 = MusicAlbum.new(true,1999)

# p temp.can_be_archived?
# p temp2.can_be_archived?

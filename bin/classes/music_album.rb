require_relative './item'

class MusicAlbum < Item
  attr_accessor :on_spotify
  attr_reader :name

  def initialize(name, publish_date, on_spotify: false)
    super(publish_date)
    @name = name
    @on_spotify = on_spotify
  end

  def can_be_archived?
    super && @on_spotify
  end
end

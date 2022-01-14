require_relative './store_music_albums'

class StoringDataClass
  def initialize(music_albums)
    @music_albums = music_albums
  end

  def run
    store_music_album_class = StoreMusicAlbumClass.new(@music_albums)
    store_music_album_class.stores_music_albums
  end
end

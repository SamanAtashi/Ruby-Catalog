require 'json'
require_relative 'read_music_albums'

class ReadingDataClass
  def initialize(music_albums)
    @music_albums = music_albums
  end

  def run
    read_music_albums_class = ReadMusicAlbums.new(@music_albums)
    read_music_albums_class.retrieves_music_albums
  end
end

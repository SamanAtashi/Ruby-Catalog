require 'json'
require_relative '../methods/create_music_album'

class ReadMusicAlbums
  def initialize(music_albums)
    @music_albums = music_albums
  end

  def retrieves_music_albums
    return unless File.exist?('./bin/data/music_albums.json')
    return if File.zero?('./bin/data/music_albums.json')

    file = File.read('./bin/data/music_albums.json')
    temp = JSON.parse(file)

    create_music_album_class = CreateNewMusicAlbumClass.new(@music_albums)

    temp.each do |item|
      create_music_album_class.creates_a_music_album(item[0], item[1], item[2])
    end
  end
end

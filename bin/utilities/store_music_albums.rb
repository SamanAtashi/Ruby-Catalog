require 'json'

class StoreMusicAlbumClass
  def initialize(music_albums)
    @music_albums = music_albums
  end

  def stores_music_albums
    data = []

    @music_albums.each do |item|
      data.push([item.name, item.publish_date, item.on_spotify])
    end

    p data
    File.new('./bin/data/music_albums.json', 'w+') unless File.exist?('./bin/data/music_albums.json')

    # File.write('./bin/data/music_albums.json') do |f|
    #   f.write(data.to_json)
    # end
    File.write('./bin/data/music_albums.json', data.to_json, mode: 'a') unless data.empty?
  end
end

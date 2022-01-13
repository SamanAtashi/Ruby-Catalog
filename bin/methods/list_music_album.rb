class ListAllMusicAlbumClass
  def initialize(music_albums)
    @music_albums = music_albums
  end

  def run
    if @music_albums.empty?
      puts 'There are no Music Albums yet!'
    else
      @music_albums.each do |item|
        puts "Name: #{item.name}"
        puts "--> Publish Date: #{item.publish_date}"
        puts "--> On Spotify: #{item.on_spotify}"
        puts
      end
    end
  end
end

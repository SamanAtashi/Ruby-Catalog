require_relative '../classes/music_album'

class CreateNewMusicAlbumClass
  def initialize(music_albums)
    @music_albums = music_albums
  end

  def run
    info = ask_for_info
    creates_a_music_album(info[0], info[1], info[2])
    puts 'Music Album created successfully ✅'
  end

  def ask_for_info
    puts 'Name of Music Album:'
    name = gets.chomp
    puts 'Publish Date of Music Album:'
    pd = gets.chomp
    puts 'Is Music Album on Spotify? (Y / N)'
    sp = gets.chomp
    sp = sp.upcase == 'Y'
    [name, pd, sp]
  end

  def creates_a_music_album(name, pbd, spo)
    new_music_album = MusicAlbum.new(name, pbd, on_spotify: spo)
    @music_albums << new_music_album
  end
end

# rubocop:disable Layout/LineLength
require_relative './methods/create_music_album'

class App
  def initialize
    @list_of_music_albums = []
    # @list_all_music_album_class = ListAllMusicAlbumClass.new(@list_of_music_albums)
    @create_music_album_class = CreateNewMusicAlbumClass.new(@list_of_music_albums)

    @options = ['List all books', 'List all music albums', 'List all movies', 'List of games', 'List all genres',
                'List all labels', 'List all authors', 'List all sources', 'Add a book', 'Add a music album', 'Add a movie', 'Add a game', 'Exit']
  end

  def run_menu
    loop do
      @options.each_with_index { |option, idx| puts "#{idx + 1} - #{option}" }
      option = gets.chomp

      case option
      when '10' then @create_music_album_class.run
      when '13'
        puts 'Thank you for using this app!😀', "\n"
        break
      else
        puts '⚠️  Please enter a number between 1 and 7', "\n"
      end
    end
  end
end

temp = App.new

temp.run_menu
# rubocop:enable Layout/LineLength

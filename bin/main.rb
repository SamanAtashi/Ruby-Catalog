require_relative './methods/create_music_album'
require_relative './methods/list_music_album'
require_relative './utilities/storing_data'
require_relative './utilities/reading_data'
require_relative './classes/manage_book'
require_relative './classes/manage_label'
require_relative './classes/option_message'

class App
  def initialize
    @list_of_music_albums = []
    @list_of_books = []
    @list_all_music_album_class = ListAllMusicAlbumClass.new(@list_of_music_albums)
    @create_music_album_class = CreateNewMusicAlbumClass.new(@list_of_music_albums)
    @manage_book_class = ManagerBook.new(@list_of_books)
    @manage_label_class = ManagerLabel.new
  end

  # rubocop:disable Metrics/MethodLength
  def run_menu
    # ! make a separate method later
    reading_data_class = ReadingDataClass.new(@list_of_music_albums)
    reading_data_class.run

    loop do
      options_message
      option = gets.chomp

      case option
      when '1' then @manage_book_class.all_books
      when '2' then @list_all_music_album_class.run
      when '5' then @manage_label_class.label_list
      when '7' then @manage_book_class.create_book
      when '8' then @create_music_album_class.run
      when '10'
        storing_data_class = StoringDataClass.new(@list_of_music_albums)
        storing_data_class.run
        @manage_book_class.save_books
        puts 'Thank you for using this app!😀', "\n"
        break
      else
        puts '⚠️  Please enter a number between 1 and 10', "\n"
      end
    end
  end
  # rubocop:enable Metrics/MethodLength
end

temp = App.new

temp.run_menu

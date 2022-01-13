require_relative './classes/item'
require_relative './classes/book'
require_relative './classes/label'
require_relative './classes/option_message'
require_relative './classes/manage_book'

# rubocop:disable Metrics/CyclomaticComplexity
def options(response, book_manager)
  case response
  when 1
    book_manager.all_books
  when 2
    list_all_albums
  when 3
    list_all_games
  when 4
    list_all_genres
  when 5
    list_all_labels
  when 6
    list_all_authors
  when 7
    book_manager.create_book
  when 8
    add_music_album
  when 9
    add_game
  end
end

# rubocop:enable Metrics/CyclomaticComplexity
def main
  response = ''
  book_manager = ManagerBook.new([])
  while response != 10
    options_message
    print 'Please enter your choice:'
    response = gets.chomp.to_i
    options(response, book_manager)
  end
  book_manager.save_books
  puts 'Thank you of used the App, we hope to see you soon!'
end

main

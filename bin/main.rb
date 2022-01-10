require_relative './classes/item'

class App
  def entry_msg
    loop do
      options = ['List all books', 'List all music albums', 'List all movies', 'List of games', 'List all genres',
                 'List all labels', 'List all authors', 'List all sources', 'Add a book', 'Add a music album', 'Add a movie', 'Add a game', 'Exit']
      options.each_with_index { |option, idx| puts "#{idx + 1} - #{option}" }
      option = gets.chomp
      case option
      when '13'
        puts 'Thank you for using this app!😀', "\n"
        break
      else
        clear
        puts '⚠️  Please enter a number between 1 and 7', "\n"
      end
    end
  end
end

temp = App.new

temp.entry_msg

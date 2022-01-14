# rubocop:disable Style/FileWrite
require 'json'
# require './book'
require_relative './book'

class ManagerBook
  attr_accessor :books, :books_json

  def initialize(books = [])
    book_file = './bin/data/books.json'
    @books_json = []
    @books = books
    if File.exist? book_file
      f = File.read(book_file)
      unless f.empty?
        json = JSON.parse(f)
        from_json(json)
      end
    else
      @books = []
    end
  end

  def all_books
    i = 0
    puts 'Here is the list of books:'
    while i < @books.length
      book = @books[i]
      puts "publisher: \"#{book.publisher}\", cover_state: #{book.cover_state}, publish_date: #{book.publish_date}"
      i += 1
    end
    puts ''
  end

  def save_books
    obj = to_json_obj
    File.open('./bin/data/books.json', 'w') { |f| f.write obj }
  end

  def create_book
    print 'publisher:'
    publisher = gets.chomp
    print 'cover_state:'
    cover_state = gets.chomp
    print 'publish_date:'
    publish_date = gets.chomp
    book = Book.new(publisher, cover_state, publish_date)
    @books.push(book)
    puts 'Book created successfully'
  end

  def to_json_obj
    i = 0
    while i < @books.length
      book = @books[i]
      # puts 'voici book:'
      # puts book.inspect
      b = {
        'publisher' => book.publisher,
        'cover_state' => book.cover_state,
        'publish_date' => book.publish_date
      }
      @books_json.push(b)
      i += 1
    end
    @books_json.to_json
  end

  def from_json(data)
    # data = JSON.load string
    # self.new data['a'], data['b']
    i = 0
    while i < data.length
      b = Book.new(data[i]['publisher'], data[i]['cover_state'], data[i]['publish_date'])
      @books.push(b)
      i += 1
    end
  end

  def take_book_publisher(publisher)
    i = 0
    tmp = -1
    while i < @books.length
      if @books[i].publisher == publisher
        tmp = @books[i]
        break
      end
      i += 1
    end
    tmp
  end
end
# rubocop:enable Style/FileWrite
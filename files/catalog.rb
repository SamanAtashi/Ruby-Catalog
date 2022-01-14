require_relative 'item'
require_relative 'game'
require_relative 'author'
require 'json'

class Catalog
  attr_reader :games, :authors

  def initialize
    @games = []
    @genres = []
    @authors = []
    @labels = []
  end

  def add_game(game)
    @games.push(game)
  end

  def add_author(author)
    @authors.push(author)
  end

  def list_games
    @games.each { |game| puts game }
  end

  def list_authors
    @authors.each { |author| puts author }
  end

  def load_data
    @games = load_file('games.json')

    @authors = load_file('authors.json')

    load_relationships(@games, 'games.json')
  end

  def load_file(file)
    if File.exist?(file)
      JSON.parse(File.read(file), create_additions: true)
    else
      []
    end
  end

  def load_relationships(items, file_name)
    return unless File.exist?(file_name)

    items_json = JSON.parse(File.read(file_name))

    items_json.each_with_index do |item_json, index|
      author = @authors.detect { |author_json| author_json.id == item_json['author_id'] }
     
      item = items[index]

      item.author = author
    end
  end

  def save_data
    save_file(@authors, 'authors.json')
    save_file(@games, 'games.json')
  end

  def save_file(data, file_name)
    File.write(file_name, JSON.generate(data)) if data.any?
  end
end

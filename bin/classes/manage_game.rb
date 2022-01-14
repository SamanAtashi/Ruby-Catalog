# rubocop:disable Style/FileWrite
require 'json'
# require './book'
require_relative './game'

class ManagerGame
  attr_accessor :books, :books_json

  def initialize(games = [])
    games_file = './bin/data/games.json'
    @games_json = []
    @games = games
    if File.exist? games_file
      f = File.read(games_file)
      unless f.empty?
        json = JSON.parse(f)
        from_json(json)
      end
    else
      @games = []
    end
  end

  def all_games
    i = 0
    puts 'Here is the list of books:'
    while i < @games.length
      game = @games[i]
      puts "multiplayer: \"#{game.multiplayer}\", publish_date: #{game.publish_date}, last_played: #{game.last_played}"
      i += 1
    end
    puts ''
  end

  def save_games
    obj = to_json_obj
    File.open('./bin/data/games.json', 'w') { |f| f.write obj }
  end

  def create_game
    print 'multiplayer:'
    multiplayer = gets.chomp
    print 'publish_date:'
    publish_date = gets.chomp
    print 'last_played:'
    last_played = gets.chomp
    game = Game.new(multiplayer, publish_date, last_played)
    @games.push(game)
    puts 'Game created successfully'
  end

  def to_json_obj
    i = 0
    while i < @games.length
      game = @games[i]
      b = {
        'multiplayer' => game.multiplayer,
        'publish_date' => game.publish_date,
        'last_played' => game.last_played
      }
      @games_json.push(b)
      i += 1
    end
    @games_json.to_json
  end

  def from_json(data)
    i = 0
    while i < data.length
      b = Game.new(data[i]['multiplayer'], data[i]['publish_date'], data[i]['last_played'])
      @games.push(b)
      i += 1
    end
  end

  def take_game_multiplayer(multiplayer)
    i = 0
    tmp = -1
    while i < @games.length
      if @games[i].multiplayer == multiplayer
        tmp = @games[i]
        break
      end
      i += 1
    end
    tmp
  end
end
# rubocop:enable Style/FileWrite
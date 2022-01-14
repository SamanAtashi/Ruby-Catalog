require 'json'
# require './game'
require_relative './game'

class ManageGame
  attr_accessor :games, :games_json

  def initialize(games = [])
    book_file = 'games.json'
    @games_json = []
    @games = games
    if File.exist? game_file
      f = File.read(game_file)
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
      puts "publish_date: \"#{game.publish_date}\", multiplayer: #{game.multiplayer}, last_played_at: #{game.last_played_at}"
      i += 1
    end
    puts ''
  end

  def save_games
    obj = to_json_obj
    File.open('games.json', 'w') { |f| f.write obj }
  end

  def create_game
    print 'publish_date:'
    publish_date = gets.chomp
    print 'multiplayer:'
    multiplayer = gets.chomp
    print 'last_played_at:'
    last_played_at = gets.chomp
    game = Game.new(publish_date, multiplayer, last_played_at)
    @games.push(game)
    puts 'Game created successfully'
  end

  def to_json_obj
    i = 0
    while i < @games.length
      game = @games[i]
      # puts 'voici game:'
      # puts game.inspect
      b = {
        'publish_date' => book.publish_date
        'multiplayer' => game.multiplayer,
        'last_played_at' => game.last_played_at,
        
      }
      @games_json.push(b)
      i += 1
    end
    @games_json.to_json
  end

  def from_json(data)
    # data = JSON.load string
    # self.new data['a'], data['b']
    i = 0
    while i < data.length
      b = Game.new(data[i]['publish_date'], data[i]['multiplayer'], data[i]['last_played_at'])
      @games.push(b)
      i += 1
    end
  end

  def take_game_multiplayer(multiplayer)
    i = 0
    tmp = -1
    while i < @books.length
      if @games[i].multiplayer == multiplayer
        tmp = @games[i]
        break
      end
      i += 1
    end
    tmp
  end
end

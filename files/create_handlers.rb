require_relative 'game'
require_relative 'author'

module CreateHandlers
  def create_game(game_details)
    Game.new(*game_details)
  end

  def create_author(author_details)
    Author.new(*author_details)
  end

end

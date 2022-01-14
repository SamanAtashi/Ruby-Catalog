require_relative './item'

class Game < Item
  attr_accessor :on_spotify
  attr_reader :name

  def initialize(multiplayer, publish_date, last_played)
    super(publish_date)
    @multiplayer = multiplayer
    @last_played = last_played
  end

  def can_be_archived?
    super && @last_played_at > 2
  end
end

require_relative './item'

class Genre
  attr_accessor :name
  attr_reader :id, :items

  def initialize(name)
    @id = rand(0..1000)
    @name = name
    @items = []
  end

  def add_item(item)
    @items << item
    item.genre = self
  end
end

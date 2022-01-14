require_relative './item'

class Author
  attr_accessor :f_name, :l_name
  attr_reader :id, :items

  def initialize(f_name, l_name)
    @id = rand(0..1000)
    @f_name = f_name
    @l_name = l_name
    @items = []
  end

  def add_item(item)
    @items << item
    item.author = self
  end
end

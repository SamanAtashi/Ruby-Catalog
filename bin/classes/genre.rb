require_relative './item'

class Genre
    attr_accessor :name
    attr_reader :id ,:items

    def initialize
        @id = rand(0..1000)
        @name=""
        @items = []
        @item_class = Item.new
        @item_class.genre = self
    end

    def add_item
        # p @item_class
        @items<<@item_class
    end
end

temp = Genre.new

temp.add_item

p temp 
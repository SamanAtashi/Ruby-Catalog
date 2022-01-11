

class Genre
    attr_accessor :name
    attr_reader :id ,:items

    def initialize
        @id = rand(0..1000)
        @name=""
        @items = [] 
    end
end
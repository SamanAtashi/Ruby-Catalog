require_relative '../classes/genre'

class ListGenreClass
    def initialize
        @list_of_genre=[Genre.new("Comedy"),Genre.new("Horror")]
    end

    def lists_genres
        @list_of_genre.each do |item|
            puts item.name
        end
    end
end
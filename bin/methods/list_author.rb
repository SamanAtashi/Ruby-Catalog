
require_relative '../classes/author'

class ListAuthorClass
    def initialize
        @list_of_authors=[Author.new("Stephen", "King"),Author.new("sth", "asdafKing")]
    end

    def lists_authors
        @list_of_authors.each do |item|
            puts "first name:#{item.f_name} , last name:#{item.l_name}"
        end
    end
end
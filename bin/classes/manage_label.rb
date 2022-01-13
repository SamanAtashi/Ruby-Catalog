require_relative './label'

class ManagerLabel
  def initialize
    @label_list = [Label.new('gift', 'red'), Label.new('new', 'blue')]
  end

  def label_list
    i = 0
    puts 'Here is the list of labels:'
    while i < @label_list.length
      label = @label_list[i]
      puts "title: \"#{label.title}\", cover_state: #{label.color}"
      i += 1
    end
  end
end

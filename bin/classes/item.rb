class Item
  attr_accessor :author, :source, :label
  attr_reader :id, :archived, :genre, :publish_date

  def initialize(pbd, archived: false)
    @id = rand(1..1000)
    @publish_date = pbd
    @archived = archived
  end

  def genre=(genre)
    @genre = genre
    genre.items.push(self) unless genre.items.include?(self)
  end

  def move_to_archive
    @archived = true if can_be_archived?
  end

  #   private

  def can_be_archived?
    Time.now.year - @publish_date >= 10
  end
end

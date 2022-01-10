class Item
  attr_accessor :genre, :author, :source, :label

  def initialize(pd)
    @id = rand(0..1000)
    @publish_date = pd
    @archived = false
  end

  private def can_be_archived?
    @publish_date >= 10
  end

  def move_to_archive
    can_be_archived? ? @archived = true : nil
  end
end

class Item
  attr_accessor :genre, :author, :source, :label

  def initialize(pbd)
    @id = rand(0..1000)
    @publish_date = pbd
    @archived = false
  end

  def move_to_archive
    can_be_archived? ? @archived = true : nil
  end

  private

  def can_be_archived?
    @publish_date >= 10
  end
end
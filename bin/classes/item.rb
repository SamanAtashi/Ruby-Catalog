class Item
  attr_accessor :genre, :author, :source, :label
    attr_reader :id , :archived

  def initialize(pbd:Time.now , archived:false)
    @id = rand(1..1000)
    @publish_date = pbd
    @archived = archived
  end

  def move_to_archive
    @archived = true if can_be_archived?
  end

  private

  def can_be_archived?
    Time.now.year - @publish_date >= 10
  end
end

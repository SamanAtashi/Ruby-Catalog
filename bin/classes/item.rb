class Item
    attr_accessor :genre , :author , :source , :label

    def initialize(pd)
        @id=Random(0..1000)
        @publish_date=DateTime.new(pd)
        @archived=false
    end
end
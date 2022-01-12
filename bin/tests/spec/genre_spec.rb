require_relative '../../classes/genre'

describe Genre do
  subject(:genre) { Genre.new("Rock") }
  subject(:item) { Item.new(1999) }

  it 'It is the same class type as Genre class' do
    expect(genre).to be_a Genre
  end

  it 'should have `id` property and be an Integer' do
    expect(genre.id).to be_an_instance_of(Integer)
  end

  it 'should have `name` property and be an String' do
    expect(genre.name).to be_an_instance_of(String)
  end

  it 'should have `items` property and be an Array' do
    expect(genre.items).to be_an_instance_of(Array)
  end

  it '#add_item should add Item-class to the items property of Genre' do
    genre.add_item(item)
    expect(item.genre).to be(genre)
  end
end

require_relative '../../classes/book'

describe 'Book' do
  it 'check if it initialized well' do
    hw = Book.new('victor', 'bad', '24 january')
    expect(hw.publisher).to eq 'victor'
    expect(hw.cover_state).to eq 'bad'
    expect(hw.publish_date).to eq '24 january'
  end
end

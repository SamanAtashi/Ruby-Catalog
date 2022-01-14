require_relative '../../classes/label'

describe 'Book' do
  it 'check if it initialized well' do
    hw = Label.new('Gift', 'Brown')
    expect(hw.title).to eq 'Gift'
    expect(hw.color).to eq 'Brown'
  end
end

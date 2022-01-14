require_relative '../../classes/game'

describe 'Book' do
  it 'check if it initialized well' do
    hw = Game.new('10 january', 'Rossy', '20 january')
    expect(hw.publish_date).to eq '10 january'
    expect(hw.multiplayer).to eq 'Rossy'
    expect(hw.last_played_at).to eq '20 january'
  end
end

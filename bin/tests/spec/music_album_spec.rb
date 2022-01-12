require_relative '../../classes/music_album'

describe MusicAlbum do
  subject(:music) { MusicAlbum.new(1999,on_spotify:true) }

  it 'should have `on_spotify` property and be an Bool' do
    expect(music.on_spotify).to be(true).or be(false)
  end

  it '#can_be_archived? return a boolean if both parent method(of same name) and @on_spotify are true' do
    expect(music.can_be_archived?).to be_truthy
  end
end

require 'rspec'
require 'artist'

describe Artist do
  describe '#initialize' do
    it 'sets the name of the artist and the genre' do
      artist = Artist.new({:name => 'John', :genre => 'Pop'})
      expect(artist.name()).to eq('John')
      expect(artist.genre()).to eq('Pop')
    end
  end
end

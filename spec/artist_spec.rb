require 'rspec'
require 'artist'

describe Artist do
  describe '#initialize' do
    it 'sets the name of the artist' do
      artist = Artist.new('John')
      expect(artist.name()).to eq('John')
    end
  end

end

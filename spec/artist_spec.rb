require 'rspec'
require 'artist'

describe Artist do
  describe '#initialize' do
    before :each do
      @artist = Artist.new({:name => 'John', :genre => 'Pop'})
    end
    it 'sets the name of the artist and the genre' do
      expect(@artist.name()).to eq('John')
      expect(@artist.genre()).to eq('Pop')
    end

    it 'sets the albums to an empty list' do
      expect(@artist.albums()).to eq([])
    end
  end
end

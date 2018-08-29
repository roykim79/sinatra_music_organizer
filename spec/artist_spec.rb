require 'rspec'
require 'artist'

describe Artist do
  before :each do
    @artist = Artist.new({:name => 'John', :genre => 'Pop'})
  end

  describe '#initialize' do
    it 'sets the name of the artist and the genre' do
      expect(@artist.name()).to eq('John')
      expect(@artist.genre()).to eq('Pop')
    end

    it 'sets the albums to an empty list' do
      expect(@artist.albums()).to eq([])
    end

    it 'sets the id attribute' do
      expect(@artist.id()).to be > 0
    end
  end

  describe '.all' do
    it 'starts off as an empty list' do
      expect(Artist.all()).to eq([])
    end
  end

  describe '#save' do
    it 'adds the artist to the artists list' do
      @artist.save()
      expect(Artist.all()).to eq([@artist])
    end

    it 'will increment @@next_id by 1' do
      @artist.save()
      artist2 = Artist.new({:name => 'Mike', :genre => 'Rock'})
      artist2.save()
      expect(artist2.id() - @artist.id()).to eq(1)
    end
  end
end

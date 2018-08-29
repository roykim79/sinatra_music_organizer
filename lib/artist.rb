class Artist
  @@next_id = 1
  @@artists = []

  attr_reader :id, :albums
  attr_accessor :name, :genre

  def initialize(attributes)
    @name = attributes.fetch(:name)
    @genre = attributes.fetch(:genre)
    @albums = []
    @id = @@next_id
  end

  def self.all()
    @@artists
  end

  def self.clear()
    @@artists = []
  end

  def self.find(id)
    @@artists.find {|artist| artist.id() == id}
  end

  def save()
    @@artists.push(self)
    @@next_id += 1
  end

  def add_album(name)
    @albums.push(name)
  end
end

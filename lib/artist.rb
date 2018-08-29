class Artist
  @@next_id = 1
  @@artists = []

  attr_accessor :name, :genre, :albums, :id

  def initialize(attributes)
    @name = attributes.fetch(:name)
    @genre = attributes.fetch(:genre)
    @albums = []
    @id = @@next_id
  end

  def self.all()
    @@artists
  end

  def save()
    @@artists.push(self)
    @@next_id += 1
  end

end

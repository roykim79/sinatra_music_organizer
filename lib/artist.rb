class Artist
  @@next_id = 1

  attr_accessor :name, :genre, :albums, :id

  def initialize(attributes)
    @name = attributes.fetch(:name)
    @genre = attributes.fetch(:genre)
    @albums = []
    @id = @@next_id
  end

end

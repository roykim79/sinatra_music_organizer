class Artist

  attr_accessor :name, :genre, :albums

  def initialize(attributes)
    @name = attributes.fetch(:name)
    @genre = attributes.fetch(:genre)
    @albums = []
  end

end

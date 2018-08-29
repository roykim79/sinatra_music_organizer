class Artist

  attr_accessor :name, :genre

  def initialize(attributes)
    @name = attributes.fetch(:name)
    @genre = attributes.fetch(:genre)
  end

end

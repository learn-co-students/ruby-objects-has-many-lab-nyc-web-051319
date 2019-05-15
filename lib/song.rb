class Song
  attr_accessor :name, :artist
  @@all = []

  def initialize(title)
    @name = title
    @@all << self
  end

  def self.all
    @@all
  end

  def add_artist(artist)
    @artist = artist
  end

  def artist_name
    if @artist == nil
      return nil
    end
    @artist.name
  end

end

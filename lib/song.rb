class Song
  attr_accessor :name,:artist
@@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    # song = Song.new(name)
    @@all
    # song.artist = self
  end
def artist_name
  self.artist.name if artist
end
end

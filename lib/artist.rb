class Artist
  attr_accessor :name

  @@all = []
  @@counter = 0

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end

  def add_song(song)
    song.artist = self
    @@counter += 1
  end

  def add_song_by_name(song_name)
   song = Song.new(song_name)
   song.artist = self
   @@counter += 1
 end

 def self.song_count
   @@counter
 end


end

class Artist
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def add_song(song) #takes in an argument of a song and associates that song with the artist by telling the song that it belongs to that artist

    song.artist = self
  end

  def add_song_by_name(name)
    song = Song.new(name)
    song.artist = self
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end

  def self.song_count #is a class method that returns the total number of songs associated to all existing artists
    Song.all.count
  end
end

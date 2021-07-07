class Artist
  attr_accessor :name, :songs
  @@all_songs = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def self.song_count
    @@all_songs.length
  end

  def add_song(song)
    @songs << song
    @@all_songs << song
    song.add_artist(self)
  end

  def add_song_by_name(title)
    new_song = Song.new(title)
    new_song.add_artist(self)
    @songs << new_song
    @@all_songs << new_song
  end
end

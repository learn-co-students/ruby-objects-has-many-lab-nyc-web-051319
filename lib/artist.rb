require 'pry'
class Artist
  attr_accessor :name, :songs
  @@songs_count = 0

  def songs
    @songs
  end

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    self.songs << song
    song.artist = self
    @@songs_count += 1
  end

  def add_song_by_name(name)
    song = Song.new(name)
    self.songs << song
    song.artist = self
    @@songs_count += 1
  end

  def self.song_count
    @@songs_count
  end

end

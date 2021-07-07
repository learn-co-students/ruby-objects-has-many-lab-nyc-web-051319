require 'pry'
class Artist
  attr_accessor :name
  attr_reader :songs

  @@artists = []

  def initialize(name)
    @name = name
    @songs = []
    @@artists << self
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def self.song_count
  
    Song.all.length
  end

  def add_song_by_name(name)
    song = Song.new(name)
    @songs << song
    song.artist = self
  end
end

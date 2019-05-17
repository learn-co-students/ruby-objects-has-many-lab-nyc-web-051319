require 'pry'
class Artist
  attr_accessor :name
  @@all = []
  @@counter = 0

  def initialize(name)
    @name = name
    @@all << self
  end

  def add_song(song)
    song.artist = self
    @@counter += 1
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end

  def self.all
    @@all
  end

  def add_song_by_name(song_name)
    self.add_song(Song.new(song_name))
  end

  def self.song_count
    @@counter
  end


end

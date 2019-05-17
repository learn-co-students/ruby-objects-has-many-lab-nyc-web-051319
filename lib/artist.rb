require_relative '../lib/song.rb'

class Artist
  attr_accessor :name

@@all = [] #first part is setting the class

def initialize(name)
  @name = name

  @@all << self #second part is pushing into the empty array

end

def self.all #3rd part is calling it in a method (@@all)
  @@all
end

def add_song(song)
  song.artist = self #takes in arg with song from the .artist in class
  #and passes it equal to self.


end

def add_song_by_name(name)
    self.add_song(Song.new(name))
    #method that adds song to artist name
end


end

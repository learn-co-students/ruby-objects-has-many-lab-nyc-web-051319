require_relative '../lib/artist.rb'

class Song
  attr_accessor :artist, :name 

@@all = [] #always do @@all will always be class variable & initialze as an empty array & pass every instance will go through initialize -- bc the only way you'll make a new var is .new.

def initialize(name)
  @name = name

  @@all << self
end

def songs


end

def self.all #reveals everything in @@all-- you need this to be able to call on that class containing the array.
  @@all
end


# def add_song_by_name(name)
#   self.new
# end

# def some_song.artist_name
#   #set an iterator to go through array of songs
#   #to organize it so that it spits out artist of given song
#   @artist.name
# end


end

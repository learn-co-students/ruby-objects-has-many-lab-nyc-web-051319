require_relative '../lib/artist.rb'

class Song
  attr_accessor :artist, :name, :song #this will hold all responsibility so you call artist class here to reference to it

@@all = [] # @@all will always be class variable & initialze as an empty array &
#pass every instance will go through initialize -- bc the only way you'll make a new var is .new.

def initialize(name)
  @name = name
  @@all << self #generel rule
end

def self.all #reveals everything in @@all-- you need this to be able to call on that class containing the array.
  @@all
end

#DONT NEED THIS:
# def self.artist
#     Songs.all.select do |song|
#       song.name == artist.name
#         Artist.name
#   #set an iterator to go through array of songs
#   #to organize it so that it spits out artist of given song
#     end
#   end

def artist_name
  if self.artist == nil  #findining artist of song
    nil
  else
    artist.name
    end
  end



end

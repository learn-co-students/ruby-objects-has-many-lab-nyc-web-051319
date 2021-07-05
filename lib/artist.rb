require_relative '../lib/song.rb'

class Artist
  attr_accessor :name #dont need to call song here bc it's not holding all the responsibility.

  @@all = [] #first part is setting the class
  @@counter = 0 #bc we're need song count later so we'll declare in add song --bc everytime we add a song it'll run it.

def initialize(name)
  @name = name
  # @song = [] #calling song here to ref to song class.
  @@all << self #second part is pushing into the empty array

end

def self.all #3rd part is calling it in a method (@@all)
  @@all
end


def add_song(song) #adding song method takes in arg of song.
  song.artist = self #assigning artist to song and making it set to artist or self.
  @@counter += 1 #bc it'll ask for count of how many songs later on
          # @song << song #local var song, pushed into song instance array

end

def add_song_by_name(name) #takes in name & adds song by it's name
    self.add_song(Song.new(name)) #adding new song to artist(new song(with it's name))
end

def songs
  # @song = [] #have to call instance of song class to access array
  Song.all.select {|song| song.artist == self}#grabbing all of the songs in the song class associate with artist
end

def self.song_count #counting songs for artist
      Song.all.count  #counting all songs, and applying .count method
  end
end

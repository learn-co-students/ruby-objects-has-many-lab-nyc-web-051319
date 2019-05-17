class Song
   attr_accessor :song, :name, :artist

   @@all = []

   def initialize(name)
     @name = name
     @@all << self
   end

   def self.all
     @@all
   end

   def artist_name
     case
     when self.artist == nil
       nil
     else
       artist.name
     end
   end

 end

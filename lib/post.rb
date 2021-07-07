class Post
   attr_accessor :title, :author, :name

   @@all = []

   def initialize(title)
     @title = title
     @@all << self
   end

   def self.all
     @@all
   end

   def author_name
     case
     when self.author == nil
       nil
     else
       author.name
     end
   end

 end

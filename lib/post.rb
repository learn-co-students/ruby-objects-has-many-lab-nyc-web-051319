require_relative '../lib/author.rb'

class Post
  attr_accessor :author

@@all = []

def initialize
  @author = author
  @@all << self

end

end

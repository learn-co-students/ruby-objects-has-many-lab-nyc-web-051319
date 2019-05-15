require "pry"

class Post
  attr_accessor :title, :author
  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end

  def self.all
    @@all
  end

  def add_author(author)
    @author = author
  end

  def author_name
    #binding.pry
    if @author == nil
      #binding.pry
      return nil
    else
      @author.name
    end
  end
end

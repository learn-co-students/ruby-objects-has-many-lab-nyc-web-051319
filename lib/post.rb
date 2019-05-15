class Post

  attr_accessor :title, :author

  @@all = []

  def initialize(title)
    @title = title
    @author = author
    @@all << self
  end

  def self.all
    @@all
  end

  def author_name
    self.author.name if author
  end

end

#post1 = Post.new("Post 1")
#puts post1.author.class

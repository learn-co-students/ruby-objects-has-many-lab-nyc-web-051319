class Post
  attr_accessor :title,:author
@@all = []
  def initialize(title)
    @title = title
    @@all << self
  end

  def self.all
    # song = Post.new(name)
    @@all
    # song.author = self
  end

  def author_name
    self.author.name if author

end
end

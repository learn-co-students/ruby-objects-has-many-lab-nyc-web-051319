class Author
  attr_accessor :name

  @@all = []
  @@counter = 0

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def posts
    Post.all.select do |post|
      post.author == self
    end
  end

  def add_post(post)
    post.author = self
    @@counter += 1
  end

  def add_post_by_title(post_name)
    post = Post.new(post_name)
   post.author = self
   @@counter += 1
  end

  def self.post_count
   @@counter
  end
end

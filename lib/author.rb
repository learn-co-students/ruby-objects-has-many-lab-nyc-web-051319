class Author
  attr_accessor :name, :posts
  @@all = []
  @@counter = 0

  def initialize(name)
    @name = name
    @posts = []
    @@all << self
  end

  def add_post(post)
    @posts << post
    post.author = self
    @@counter += 1
  end

  def posts
    @posts
  end

  def self.all
    @@all
  end

  def add_post_by_title(post_title)
    self.add_post(Post.new(post_title))
  end

  def self.post_count
    @@counter
  end


end

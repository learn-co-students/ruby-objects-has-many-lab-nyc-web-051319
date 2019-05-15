require 'pry'

class Author
  attr_accessor :name, :posts, :all_posts

  @@all_posts = []

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    @posts.push(post)
    @@all_posts.push(post)
    post.author = self
  end

  def add_post_by_title(title)
    new_post = Post.new(title)
    new_post.add_author(self)
    @posts.push(new_post)
    @@all_posts.push(new_post)
  end

  def self.post_count
    if @@all_posts == nil
      return 0
    end
    @@all_posts.length
  end

end

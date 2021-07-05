require_relative '../lib/post.rb'

class Author
  attr_accessor :name

  @@all = []
  @@counter = 0

  def initialize(name)
    @name = name
    @posts = []

    @@all << self
  end

  def self.all
    @@all
  end


def add_post(post)
  post.author = self
  @@counter += 1
end

def add_post_by_title(post_title)
  posts = Post.new(post_title)
      posts.author = self #setting local var posts applyng author & making = to self
end

def self.post_count
  Post.all.count #we want to count post not author
end

def posts
  Post.all
end



end

class Author
  attr_accessor :name, :posts
  @@count =1
  def initialize(name)
    @name = name
    @posts = []

      end

  def add_post(post)

    @posts << post
    post.author = self
    @@count +=1
  end
  def add_post_by_title(name)
    post = Post.new(name)
    @posts << post
    post.author = self

  end

  def posts
    @posts
  end
  def self.post_count

  end

  def self.post_count
      @@count
  end
end

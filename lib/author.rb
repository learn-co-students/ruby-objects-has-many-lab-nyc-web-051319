class Author
    attr_accessor :name, :post
    @@count = 0
    def initialize(name)
      @name = name
      @posts = []
      
    end
   
    def add_post(post)
      @posts << post
      @@count += 1
      post.author = self
      
    end
   
    def posts
      @posts
    end

    def add_post_by_title(name)
        post = Post.new(name)
        add_post(post)
    end

    def self.post_count
        @@count
    end

end
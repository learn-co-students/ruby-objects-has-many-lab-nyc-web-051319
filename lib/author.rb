class Author
    attr_accessor :name
    attr_reader :posts

    def initialize(name)
        @name = name
        @posts = []        
    end

    def add_post(post)
        post.author = self
        @posts << post
    end

    def add_post_by_title(post_name)
        new_post = Post.new(post_name)
        add_post(new_post)
    end

    def self.post_count
        Post.all.count
    end
end
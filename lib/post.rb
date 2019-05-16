class Post
  attr_accessor :title, :author

  @@all = []

  def initialize(title)
    @title = title
    @@all << self #pushes new instances into a class variable called @@all upon initialization
  end

  def self.all #.all is a class method that returns an array of all post instances that have been created
    @@all
  end

  def author_name
    author.name if author #returns nil if theres no author
  end
end

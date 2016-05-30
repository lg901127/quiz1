module Blog
  class Article
    attr_accessor :title, :body
    def initialize(title, body)
      @title = title
      @body = body
    end

  end

  class Snippet < Article
    attr_accessor :title, :body
    def initialize(title, body)
      super
      @body = body.slice(0, 100)
      if @body.length == 100
        @body = @body + "..."
      end
    end
  end

end

include Blog

a = Article.new("article1", "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
p a.title
p a.body
b = Snippet.new("article1", "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
p b.title
p b.body

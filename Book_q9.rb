
  class Book
    attr_accessor :title, :chapters
    def initialize(title, chapters = [])
      @title = title
      @chapters = chapters
    end

    def add_chapter(chapter)
      self.chapters << chapter
    end

    # def chapters_print
    #   puts self.chapters
    # end

    def chapters_print
      # puts self.chapters.length
      if self.chapters.length == 0
        puts "It's blank!"
      elsif self.chapters.length == 1
        puts "Your book: #{self.title} has 1 chapter: "
        puts "1. #{self.chapters[0]}"
      else
        puts "Your book: #{self.title} has #{self.chapters.length} chapters"
        self.chapters.each do |chapter|
          puts "#{self.chapters.index(chapter) + 1}. #{chapter}"
        end
      end
    end

  end


book1 = Book.new("book1", ["chp1"])
book1.add_chapter("chp2")
book1.add_chapter("chp3")
book1.chapters_print

book2 = Book.new("book2")
book2.chapters_print
book2.add_chapter("chp1")
book2.chapters_print

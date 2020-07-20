# Build the following methods on the Author class

# Author.all should return all of the authors
# Author#books should return all of the books an author has written
# Author#write_book should take arguments of a title and word count and make a new Book instance associated with this author
# Author#total_words should return the total number of words that author has written across all of their authored books.
# Author.most_words should return the author instance who has written the most words


class Author

    @@all = []
    @total = []

    attr_accessor :name

    def initialize (name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def books
        Book.all.select {|book| book.author == self}
    end

    def write_book (title, word_count)
        Book.new(title, word_count, self)
    end

    def total_words
        self.books.map { |book| book.word_count}.sum
    end

    def self.most_words
       self.all.max_by  {|author| author.total_words}
    end

end
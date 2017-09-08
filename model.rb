class Book
  @@books = []
  def initialize(args)
    @id = args[:id]
    @title = args[:title]
  end

  def self.add(book)
    @@books << book
  end

  def self.all
    @@books
  end
end

class Book
  @@books = []
  def initialize(args)
    @id = args[:id]
    @title = args[:title]
    @@books << self
  end
  
  def self.all
    @@books
  end
end

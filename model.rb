class Book
  attr_reader :title, :id
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

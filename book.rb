class Book

  attr_reader :title, :author, :isbn, :price, :genre, :publisher, :quantity, :cost, :condition

  def initialize(options)
    @title = options[:title]
    @author = options[:author]
    @isbn = options[:isbn]
    @price = options[:price]
    @genre = options[:genre]
    @publisher = options[:publisher]
    @quantity = options[:quantity]
    @cost = options[:cost]
    @condition = options[:condition]
    p "*" * 50
    p options
  end

end


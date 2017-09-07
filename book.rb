class Book
  attr_reader :author, :title, :quantity, :price, :genre, :isbn,
   :condition, :publisher, :book_format, :cost, :exploded

  attr_accessor :discounted

  def initialize(options)
    @author = options[:author]
    @title = options[:title]
    @quantity = options[:quantity]
    @price = options[:price]
    @genre = options[:genre]
    @isbn = options[:isbn]
    @condition = options[:condition]
    @publisher = options[:publisher]
    @cost = options[:cost]
    @book_format = options[:book_format]
    @exploded = false
    @discounted = options[:discounted]
  end

  def reduce(num=1)
    @quantity -= num
  end

  def increase(num=1)
    @quantity += num
  end

  def explode
    @exploded = true
    @price = 0
    reduce
  end
end

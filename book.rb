require_relative 'product'

class Book < Product

  attr_reader :author, :title, :genre, :isbn,
   :condition, :publisher, :book_format


  def initialize(options)
    super(options)
    @author = options[:author]
    @title = options[:title]
    @genre = options[:genre]
    @isbn = options[:isbn]
    @condition = options[:condition]
    @publisher = options[:publisher]
    @book_format = options[:book_format]
  end


end

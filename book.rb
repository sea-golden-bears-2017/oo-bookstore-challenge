require_relative 'product'
class Book < Product
  attr_reader :title, :author, :genre, :isbn, :publisher, :format

  def initialize(args)
    super
    @title = args[:title]
    @author = args[:author]
    @genre = args[:genre]
    @isbn = args[:isbn]
    @publisher = args[:publisher]
    @format = args[:format]
  end
end

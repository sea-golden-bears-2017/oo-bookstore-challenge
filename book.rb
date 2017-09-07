require_relative 'product'

class Book < Product
  attr_reader :id, :title, :author, :price, :genre, :isbn
  attr_accessor :count

  def initialize(args)
    super(args[:id], args[:price], args[:count])
    @title = args[:title]
    @author = args[:author]
    @genre = args[:genre]
    @isbn = args[:isbn]
  end
end

require_relative 'product'

class Book < Product
  attr_reader :title, :author, :genre, :isbn

  def initialize(book_hash)
    @title = book_hash[:title]
    @author = book_hash[:author]
    @genre = book_hash[:genre]
    @isbn = book_hash[:isbn]
    super(book_hash)
  end

end

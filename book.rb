class Book
  attr_reader :id, :title, :author, :genre, :price, :count, :isbn

  def initialize(book_hash)
    @id = book_hash[:id]
    @title = book_hash[:title]
    @author = book_hash[:author]
    @genre = book_hash[:genre]
    @price = book_hash[:price]
    @count = book_hash[:count]
    @isbn = book_hash[:isbn]
  end
end

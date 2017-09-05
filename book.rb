class Book
  attr_reader :quantity, :title, :author, :genre, :cover_style, :isbn, :price, :publisher, :cost

  def initialize(hash)
    @quantity = hash[:quantity]
    @title = hash[:title]
    @author = hash[:author]
    @genre = hash[:genre]
    @cover_style = hash[:cover_style]
    @isbn = hash[:isbn]
    @price = hash[:price]
    @publisher = hash[:publisher]
    @cost = hash[:cost]
  end

end

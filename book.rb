class Book
  attr_reader :id, :title, :author, :genre, :price, :count, :isbn

  def initialize(hash)
    @id = hash[:id]
    @title = hash[:title]
    @author = hash[:author]
    @genre = hash[:genre]
    @price = hash[:price]
    @count = hash[:count]
    @isbn = hash[:isbn]
  end
end

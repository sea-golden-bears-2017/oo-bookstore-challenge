class Book
  attr_reader :id, :title, :author, :price, :genre, :isbn
  attr_accessor :count

  def initialize(args)
    @id = args[:id]
    @title = args[:title]
    @author = args[:author]
    @price = args[:price]
    @count = args[:count]
    @genre = args[:genre]
    @isbn = args[:isbn]
  end
end

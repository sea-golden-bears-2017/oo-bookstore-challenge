class Book

  attr_reader :title, :author, :price, :count, :genre, :isbn
  def initialize(args)
    @title = args[:title]
    @author = args[:author]
    @price = args[:price]
    @count = args[:count]
    @genre = args[:genre]
    @isbn = args[:isbn]
  end
end

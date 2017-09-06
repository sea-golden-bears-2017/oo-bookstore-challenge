class Book
  attr_reader :title, :author, :genre, :isbn, :price, :count, :publisher, :condition, :book_format

  def initialize(args = {})
    @title = args[:title]
    @author = args[:author]
    @genre = args[:genre]
    @isbn = args[:isbn]
    @price = args[:price]
    @count = args[:count]
    @publisher = random_publisher
    @condition = random_condition
    @book_format = random_book_format
  end

  def random_publisher
    publishers = ['Penguin Books', 'Oxford', 'Tor', 'Mountaineers', 'Taschen', 'Houghton Mifflin']
    publishers.sample
  end

  def random_condition
    conditions = ['fair', 'good', 'very good', 'like new', 'new']
    conditions.sample
  end

  def random_book_format
    book_formats = ['paperback', 'hardcover', 'audiobook']
    book_formats.sample
  end
end

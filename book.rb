require_relative 'product'

class Book < Product
  attr_reader :author, :genre, :isbn, :publisher, :condition, :book_format

  def initialize(args = {})
    @author = args[:author]
    @genre = args[:genre]
    @isbn = args[:isbn]
    @publisher = random_publisher
    @condition = random_condition
    @book_format = random_book_format
    super(args)
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

class Book
  attr_reader :quantity, :title, :author, :genre, :book_format, :isbn, :price, :condition, :cost, :publisher, :rating, :device_armed

  def initialize(options)
    @quantity = options[:quantity]
    @title = options[:title]
    @author = options[:author]
    @genre = options[:genre]
    @book_format = options[:book_format]
    @isbn = options[:isbn]
    @price = options[:price]
    @condition = options[:condition]
    @cost = options[:cost]
    @publisher = options[:publisher]
    @rating = options[:rating]
    @device_armed = options[:device_armed]
  end

  def book_exploder
    if @device_armed
      "EXPLODE!!! (You're dead.)"
    else
      "Thanks for shopping with us!"
    end
  end

end

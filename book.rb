class Book

  attr_reader :title, :author, :genre, :price,
              :quantity, :isbn, :format, :condition,
              :cost, :publisher

  def initialize(options)
    @title = options[:title]
    @author = options[:author]
    @genre = options[:genre]
    @price = options[:price].to_f
    @quantity = options[:count].to_i
    @isbn = options[:isbn]
    @format = ["Hard Cover", "Paperback"].sample
    @condition = options[:condition] || "New"
    @cost = @price * 0.5
    @publisher = options[:publisher] || "Self-published: #{@author}"
  end


end

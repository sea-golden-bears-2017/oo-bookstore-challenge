class Book

  attr_reader :title, :author, :isbn, :price, :genre, :publisher, :quantity, :cost, :condition

  def initialize(options)
    @title = options[:title] #in invoice.csv
    @author = options[:author] #in invoice.csv
    @isbn = options[:isbn] #in invoice.csv
    @price = options[:price] #in invoice.csv
    @genre = options[:genre] #in invoice.csv
    @publisher = options[:publisher]
    @quantity = options[:quantity] #in invoice.csv
    @cost = options[:cost]
    @condition = options[:condition]
    p options
  end

end


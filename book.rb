class Book
    attr_reader :id, :title, :author, :genre, :price, :isbn
    
    attr_accessor :count
    
    def initialize(options)
        @id = options[:id]
     @title = options[:title]
    @author = options[:author]
     @genre = options[:genre]
     @price = options[:price]
      @isbn = options[:isbn]
    end
end
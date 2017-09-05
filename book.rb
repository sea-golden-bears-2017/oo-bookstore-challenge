class Book
  attr_reader :author, :title


  def initialize(options)
    @author = options[:author]
    @title = options[:title]
  end
end

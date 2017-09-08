require_relative 'product'

class Book < Product
  attr_reader :id, :title, :author, :genre, :isbn

  def initialize(hash)
    super(hash)
    @id = hash[:id]
    @title = hash[:title]
    @author = hash[:author]
    @genre = hash[:genre]
    @isbn = hash[:isbn]
  end
end

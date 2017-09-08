require_relative "product.rb"
require_relative 'appraisable'

class Book < Product
  
  include Appraisable
  attr_reader :id, :title, :author, :genre,  :isbn

  def initialize(book_hash)
    super
    @title = book_hash[:title]
    @author = book_hash[:author]
    @genre = book_hash[:genre]
    @isbn = book_hash[:isbn]
  end
end

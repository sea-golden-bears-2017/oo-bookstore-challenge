require_relative "product.rb"
require_relative "appraisal.rb"
class Book < Product
  attr_reader  :title, :author, :genre, :cover_style, :isbn, :publisher
     include Appraisal
  def initialize(hash)
    super(hash[:quantity], hash[:price], hash[:cost])
    @title = hash[:title]
    @author = hash[:author]
    @genre = hash[:genre]
    @cover_style = hash[:cover_style]
    @isbn = hash[:isbn]
    @publisher = hash[:publisher]
  end



end

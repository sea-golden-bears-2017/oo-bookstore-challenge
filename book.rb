require_relative 'product'

class Book < Product
  attr_reader :id, :title, :author, :genre, :isbn
  attr_accessor :condition

  def initialize(hash)
    super(hash)
    @id = hash[:id]
    @title = hash[:title]
    @author = hash[:author]
    @genre = hash[:genre]
    @isbn = hash[:isbn]
    @condition = random_condition
  end

  def random_condition
    conditions = ['mint', 'near mint', 'good', 'poor', 'terrible']
    conditions.sample
  end
end

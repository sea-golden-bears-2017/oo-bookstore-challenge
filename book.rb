require_relative 'product'
require_relative 'appraise'

class Book < Product
  attr_reader :id, :title, :author, :price, :genre, :isbn
  attr_accessor :count, :condition
  include Appraisable

  def initialize(args, condition = 'new')
    super({id: args[:id], count: args[:count], price: args[:price]})
    @title = args[:title]
    @author = args[:author]
    @genre = args[:genre]
    @isbn = args[:isbn]
    @condition = condition
  end

  def set_discount_price(condition, price)
    @price = appraise(condition, price)
  end
end

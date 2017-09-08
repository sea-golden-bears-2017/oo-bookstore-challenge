require_relative 'product'
require_relative 'appraise'

class Tshirt < Product
  attr_reader :id, :price, :count, :size
  attr_accessor :condition
  include Appraisable

  def initialize(args, condition = 'new')
    super({id: args[:id], count: args[:count], price: args[:price]})
    @size = args[:size]
    @condition = condition
  end

  def set_discount_price(condition, price)
    @price = appraise(condition, price)
  end

  # investigate on needing to create parameters for Module use
end

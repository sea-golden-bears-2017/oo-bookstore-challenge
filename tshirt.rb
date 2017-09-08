require_relative 'product'

class Tshirt < Product
  attr_reader :id, :price, :count, :size

  def initialize(args)
    super({id: args[:id], count: args[:count], price: args[:price]})
    @size = args[:size]
  end
end

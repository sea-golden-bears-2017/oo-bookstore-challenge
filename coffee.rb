require_relative 'product'

class Coffee < Product
  attr_reader :id, :price, :count, :roast

  def initialize(args)
    super({id: args[:id], count: args[:count], price: args[:price]})
    @roast = args[:roast]
  end
end

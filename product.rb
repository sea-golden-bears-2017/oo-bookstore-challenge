class Product
  attr_reader :price, :cost, :quantity

  def initialize(options)
    @price = options[:price]
    @cost = options[:cost]
    @quantity = options[:quantity]
  end
end

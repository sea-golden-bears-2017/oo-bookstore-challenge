class Product
  attr_accessor :quantity, :price, :cost
  def initialize(quantity, price, cost)
    @quantity = quantity
    @price = price
    @cost = cost
  end
end

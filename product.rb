class Product

  attr_reader :price, :quantity, :cost, :shelf, :condition

  def initialize(product_hash)
    @price = product_hash[:price]
    @quantity = product_hash[:quantity]
    @cost = product_hash[:cost]
    @shelf = product_hash[:shelf]
    @condition = product_hash[:condition]
  end

end

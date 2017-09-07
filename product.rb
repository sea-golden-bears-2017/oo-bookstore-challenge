class Product

  attr_reader :price, :quantity, :cost, :shelf, :condition

  def initialize(product_hash)
    @price = product_hash[:price].to_f
    @quantity = product_hash[:quantity].to_i
    @cost = product_hash[:cost].to_i
    @shelf = product_hash[:shelf]
    @condition = product_hash[:condition]
  end

end

class Product
attr_reader :name, :price, :cost, :condition, :quantity
attr_accessor :id

  def initialize(args)
    @id = args[:id]
    @name = args[:name]
    @price = args[:price]
    @cost = args[:cost]
    @quantity = args[:quantity]
    @condition = args[:condition]
  end

  def record_sale(id, qty)
    sold_item(qty)
  end

  protected
  def sold_item(qty)
    @quantity -= qty
  end
end

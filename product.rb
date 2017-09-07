class Product
  attr_accessor :quantity, :price, :cost, :exploded
  def initialize(options)
    @quantity = options[:quantity]
    @price = options[:price]
    @cost = options[:cost]
    @sku = options[:cost]
    @exploded = false

  end

  def decrease(num=1)
    @quantity -= num
  end

  def increase(num=1)
    @quantity += num
  end

  def explode
    @exploded = true
    @price = 0
    decrease
  end

end

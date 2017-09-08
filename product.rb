

class Product
  attr_reader :count, :price, :cost

  def initialize(arguments)
    @count = arguments[:count]
    @price = arguments[:price]
    @cost = arguments[:cost]
  end
end

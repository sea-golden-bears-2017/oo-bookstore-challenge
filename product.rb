

class Product
  attr_reader :id, :count, :price, :cost

  def initialize(arguments)
    @id = arguments[:id]
    @count = arguments[:count]
    @price = arguments[:price]
    @cost = arguments[:cost]
  end
end

class Product
  attr_reader :id, :price, :count

  def initialize(id, price, count)
    @id = id
    @price = price
    @count = count
  end
end

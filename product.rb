class Product
  attr_reader :price, :count
  def initialize(hash)
    @price = hash[:price]
    @count = hash[:count]
  end
end

class Product

  attr_reader :title, :price, :count

  def initialize(args)
    @title = args[:title]
    @price = args[:price]
    @count = args[:count]
  end

end

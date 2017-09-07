require_relative 'product'

class Coffee < Product
  attr_reader :id, :price, :count, :roast

  def initialize(args)
    super(args[:id], args[:price], args[:count])
    @roast = args[:roast]
  end
end

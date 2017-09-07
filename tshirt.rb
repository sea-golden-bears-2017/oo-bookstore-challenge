require_relative 'product'

class Tshirt < Product
  attr_reader :id, :price, :count, :size

  def initialize(args)
    super(args[:id], args[:price], args[:count])
    @size = args[:size]
  end
end

require_relative 'product'

class Coffee < Product

  attr_reader :weight, :roast, :ground, :decaf

  def initialize(args)
    super
    @weight = args[:weight]
    @roast = args[:roast]
    @ground = args[:ground]
    @decaf = args[:decaf]
  end
end

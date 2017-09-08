require_relative 'product'

class Tshirt < Product
  attr_reader :size, :color

  def initialize(options)
    super(options)
    @size = options[:size]
    @color = options[:color]
  end
end

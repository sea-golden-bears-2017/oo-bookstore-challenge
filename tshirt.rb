require_relative 'product'

class Tshirt < Product
  attr_reader :size

  def initialize(options)
    super(options)
    @size = options[:size]
  end

end

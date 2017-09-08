require_relative 'product'


class Cookie < Product
  attr_reader :flavor 

  def initialize(arguments)
    @flavor = arguments[:flavor]

    super(arguments)
  end
end

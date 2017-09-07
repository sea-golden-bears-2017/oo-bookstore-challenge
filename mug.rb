require_relative 'product.rb'

class Mug < Product
  attr_reader :color, :material, :design
  
  def initialize(args)
    super
    @color = args[:color]
    @material = args[:material]
    @design = args[:design]
  end
end

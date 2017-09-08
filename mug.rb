require_relative 'product.rb'
require_relative 'appraisable'

class Mug < Product
  include Appraisable
  attr_reader :color, :material, :design

  def initialize(args)
    super
    @color = args[:color]
    @material = args[:material]
    @design = args[:design]
  end
end

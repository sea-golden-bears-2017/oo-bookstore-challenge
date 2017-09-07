require_relative 'product.rb'

class Merch < Product
  attr_accessor :type, :brand, :size, :gender

  def initialize(hash)
    @type =hash[:type]
    @brand = hash[:brand]
    @size = hash[:size]
    @gender = hash[:gender]
  end
end

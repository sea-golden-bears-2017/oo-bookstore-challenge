require_relative 'product'

class Tshirt < Product
  attr_reader :id, :price, :count, :size
  attr_accessor :condition

  def initialize(args, condition = 'new')
    super({id: args[:id], count: args[:count], price: args[:price]})
    @size = args[:size]
    @condition = condition
  end

  def reject?(condition)
    return true if @condition == 'bad' || @condition == 'new'
    false
  end

end

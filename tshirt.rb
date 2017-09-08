require_relative 'product'

class Tshirt < Product
  attr_reader :id, :price, :count, :size
  attr_accessor :condition

  def initialize(args, condition = 'new')
    super({id: args[:id], count: args[:count], price: args[:price]})
    @size = args[:size]
    @condition = condition
  end

  class InvalidCondition < StandardError
  end

  def reject?(condition)
    return true if @condition == 'bad' || @condition == 'new'
    false
  end

  def find_discount(condition)
    return 0.25 if condition == 'good'
    return 0.5 if condition == 'okay'
  end

  def appraise(condition, price)
    raise InvalidCondition if reject?(condition)

    discount = find_discount(condition)
    price - (price * discount)
  end

end

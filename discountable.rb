require_relative 'bookstore'

module Discountable

  def determine_discount(object)
    @discount.call(object)
  end

end

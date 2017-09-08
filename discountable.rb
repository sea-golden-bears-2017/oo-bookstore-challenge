require_relative 'bookstore'

module Discountable

  def determine_discount(object)
    discount_proc = @discount
    discount_proc.call(object)
  end

  


end

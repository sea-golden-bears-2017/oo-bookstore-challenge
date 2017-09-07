require_relative 'pos_module'
require_relative 'book'

class CashRegister
  include PointOfSale

  attr_accessor :till
  @@transactions = 0

  def initialize(cash)
    @till = cash
    @transactions = {}
  end

  def make_sale(item)
    @till = sell(@till, item)
  end

  def customer_return(item)
    @till = return_item(@till, item)
  end

end

require_relative 'pos_module'
require_relative 'book'

class CashRegister
  include PointOfSale

  attr_accessor :till

  def initialize(cash)
    @till = cash
  end

  def sell_book(item)
    @till = sell(@till, item)
  end

end

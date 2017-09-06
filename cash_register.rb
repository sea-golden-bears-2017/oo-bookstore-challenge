require_relative 'pos_module'
class CashRegister
  include PointOfSale

  attr_reader :cash_register

  def initialize(cash)
    @cash_register = cash
  end
end

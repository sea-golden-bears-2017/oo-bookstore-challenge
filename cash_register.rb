require_relative 'pos_module'
class CashRegister
  include PointOfSale

  attr_reader :till

  def initialize(cash)
    @till = cash
  end

  def sell(book, inventory, employee)
    @till = pos_sell(book, inventory, @till)
  end

  def purchase(book, inventory, employee)
    @till = pos_purchase(book, inventory, @till)
  end

  def return(book, inventory, employee)
    @till = pos_return(book, inventory, @till)
  end

  def cash_drop(amount)
    @till += amount
  end
end

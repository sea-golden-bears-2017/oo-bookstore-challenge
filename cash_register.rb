class CashRegister

  attr_accessor :current_cash

  def initialize
    @starting_value = 250.0
    @current_cash   = 250.0
    @transactions   = []
  end

  def cash_drop
    profit = @current_cash - @starting_value
    @current_cash -= profit
    profit
  end

end

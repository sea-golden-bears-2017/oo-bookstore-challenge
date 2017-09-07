class CashRegister
  attr_reader :till, :transactions
  def initialize
    @till = 0
    @transactions = []
  end
end

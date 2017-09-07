class CashRegister
  attr_reader :transactions, :till

  def initialize
    @transactions = []
    @till = {twenty: 5, ten: 10, five: 20, one: 100}
  end

end

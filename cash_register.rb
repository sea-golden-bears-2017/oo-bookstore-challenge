require_relative 'transaction'
require_relative 'appraisable'

class CashRegister
  include Appraisable
  attr_reader :till, :transactions


  def initialize
    @till = 0
    @transactions = []
  end

  # def sell(items) # We have to create a new transaction class
  #   receipt = Transaction.new()
  #   @transactions << receipt
  #   @till += receipt.revenue
  # end

  def buy(book)
   reject(book)
  end
end





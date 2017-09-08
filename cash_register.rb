require_relative 'transaction'
require_relative 'appraisable'

class CashRegister
  include Appraisable
  attr_reader :transactions
  attr_accessor :till


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
    if reject(book) == true
      percent = appraise(book)
      @till -= (book.price * percent)
    else
      puts "Book is too old."
    end
  end
end





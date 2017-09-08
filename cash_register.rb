require_relative 'transaction'


class CashRegister
  attr_reader :transactions, :till

  def initialize
    @transactions = []
    @till = {hundred: 0, fifty: 0, twenty: 0, ten: 0, five: 0, one: 0}
  end

  def sell(product_array, employee)
    # I: accept a list of products to sell
    # I: employee (get the id and auth)
    # I: customer (in order to pay/ get "cash")
    # accept money payment and calculate change
    # remove items from inventory
    # create a transaction - (maybe sends to transaction method)
    book = product_array[0]
    book.quantity = book.quantity - 1
    # calculate total price
    # ask customer for cash
      # cash = customer cash
    # calculate change
    create_transaction()
  end

  def create_transaction(product_array, employee, cash, )
    # generates new id
      # id is index of transaction in transactions array
    # logs items sold
    # logs charge
    # logs employee id
    # logs cash accepted
    # logs change
  end
end

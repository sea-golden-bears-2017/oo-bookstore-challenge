require_relative 'pos_module'
require_relative 'transaction'

class CashRegister
  include PointOfSale

  attr_reader :till, :transaction_log

  def initialize(cash)
    @till = cash
    @transaction_log = {}
    @transaction_id = 1
  end

  def sell(book, inventory, employee)
    @till = pos_sell(book, inventory, @till)
    transaction = Transaction.new({id: @transaction_id, items: book, revenue: book.price,
                      employee_id: employee.id, cash: 10, change: 5})
    @transaction_log[transaction.id] = transaction
    @transaction_id += 1
    transaction
  end

  def purchase(book, inventory, employee)
    @till = pos_purchase(book, inventory, @till)
    transaction = Transaction.new({id: @transaction_id, items: book,
                  revenue: (-1) * book.price, employee_id: employee.id, cash: 0,
                  change: book.price})
    @transaction_log[transaction.id] = transaction
    @transaction_id += 1
    transaction
  end

  def return(book, inventory, employee)
    @till = pos_return(book, inventory, @till)
  end

  def cash_drop(amount)
    @till += amount
  end
end

class CashRegister
  attr_reader :till, :transactions

  def initialize
    @till = 0
    @transactions = []
  end

  def sell(book) # We have to create a new transaction class
    transaction = Transaction.new(transaction_hash)
    @till += transaction.revenue
    transactions << transaction
  end
end


# TRANSACTION CLASS
# - OUTSIDE OF INITIALIZE ( @@transaction_id )
# - @@transaction_id += 1
# - @items = transaction_hash[:items] (found using the item id)
# - @revenue = the combined cost of the items
# - @employee_id = transaction_hash[:employee_id] ??
# - @cash_given = transaction_hash[:cash_given]
# - @change_returned = transaction_hash[:change_returned]

# - Pass in values for each item you would want on a receipt, then the transaction class would store those values. We could call receipts and add them to the transaction array in the CashRegister class.

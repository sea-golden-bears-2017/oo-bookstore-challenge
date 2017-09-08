class Transaction
  @@transaction_id = 0

  def initialize()
    @@transaction_id += 1
    @items = hash[:items]
    @employee_id = hash[:employee_id]
    @funds_given = hash[:funds_given]
    @change_returned = hash[:change_returned]
    @revenue = calculate_revenue(hash[:items])

  end

  def calculate_revenue(items)
    # iterate through item costs and return the total
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

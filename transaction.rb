class Transaction

  def initialize(arguments)
    @id = arguments[:id]
    @employee_id = arguments[:employee_id]
    @transaction_type = arguments[:transaction_type]
    @cash = arguments[:cash]
    @count = arguments[:count]
    @change = arguments[:change]
    @revenue = arguments[:revenue]
  end




  #INPUT hash

  # id
  # employee_id
  # type (return or sale)
  # book_count (hash of id and count)
  # cash
  # change
  # revenue


end

class Transaction

  def initialize(args)
    @items       = args[:items]
    @revenue     = args[:revenue]
    @employee_id = args[:employee_id]
    @cash        = args[:cash]
    @change      = args[:change]
    @id          = args[:id]
  end
end

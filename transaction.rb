class Transaction
  attr_reader :id, :items, :revenue, :employee_id, :cash, :change

  def initialize(options)
    @id = options[:id]
    @items = options[:items]
    @revenue = options[:revenue]
    @employee_id = options[:employee_id]
    @cash = options[:cash]
    @change = options[:change]
  end
end

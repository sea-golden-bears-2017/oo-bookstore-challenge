require_relative 'employee'
require_relative 'book'

class Transaction
  attr_reader :id, :employee_name, :item_title, :revenue
  @@id_counter = 0
  def initialize(item, employee)
    @id = @@id_counter
    @@id_counter += 1
    @item_title = item.title
    @revenue = item.price
    @employee_name = employee.name
  end

  def self.id_counter
    @@id_counter
  end

end

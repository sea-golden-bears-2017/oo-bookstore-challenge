require_relative 'employee'

class BookStore
  attr_reader :hours, :sections, :books_inventory, :employees, :open, :revenue

  def initialize(options)
    @hours = options[:hours]
    @sections = options[:sections]
    @books_inventory = {}
    @employees = {}
    @open = false
    @revenue = 0
  end

  def open?
    @open
  end

  def book_store_open
    @open = true
  end

  def book_store_close
    @open = false
  end

  def hire(employee)
    @employees[employee.id] = employee
    employee.id
  end

  def fire(employee)
    employee.terminate
  end
end

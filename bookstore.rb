require_relative "cash_register"
require_relative "book"

class BookStore
  attr_reader :hours, :sections, :employees, :open, :revenue, :cash_register
  attr_accessor :books_inventory

  def initialize(options)
    @hours = options[:hours]
    @sections = options[:sections]
    @books_inventory = {}
    @employees = {}
    @open = false
    @revenue = 0
    @cash_register = CashRegister.new(200)
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
    @employees.delete(employee.id)
    employee.id
  end
end

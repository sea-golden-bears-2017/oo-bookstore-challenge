require 'date'
require_relative "merch.rb"
class BookStore
  attr_reader :hours, :books, :sections, :employees, :revenue , :merch, :on_shift_employees
  attr_accessor :is_open

  def initialize
    @hours = Range.new(9,18)
    @books = []
    @sections = []
    @employees = []
    @on_shift_employees = []
    @revenue = 0
    @is_open = false
    @merch = []
  end

  def open_store
    self.is_open = true
  end

  def close_store
    self.is_open = false
  end

  ### employee is a hash from Employee.new
  def hire(new_employee)
    self.employees << new_employee
  end

  def fire(employee_id)
    terminated_employee = @employees.select { |emp_obj| emp_obj.id == employee_id }
    terminated_employee[0].term_date = Time.now.strftime("%m/%d/%Y")
  end

    def add_merch(merch_hash)
      @merch << Merch.new(merch_hash)
    end

    def on_shift?(employee_id)
      
    end
end

require 'csv'
require_relative 'book'
require_relative 'employee'

class BookStore

  attr_reader :books, :open, :employees, :sections, :revenue

  def initialize
    @books = []
    @employees = []
    @open = false
    @sections = ["fiction", "graphic novels", "magazines"]
    @revenue = 0.0
  end

  def purchase(filename)
    CSV.foreach(filename, headers: true, header_converters: :symbol) do |row|
      attribute_hash = row.to_h
      @books << Book.new(attribute_hash)
    end
  end

  def toggle_open_status
    @open = !@open
  end

  def hire(args)
    new_employee = Employee.new(args)
    @employees << new_employee
    new_employee
  end

  def fire(id)
    @employees.delete_if { |employee| employee.id == id }
  end

  def add_section(new_section)
    @sections << new_section
  end
end

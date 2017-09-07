require 'csv'
require_relative 'book'
require_relative 'employee'

class BookStore

  attr_reader :books, :open, :employees

  def initialize
    @books = []
    @employees = []
    @open = false
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
end

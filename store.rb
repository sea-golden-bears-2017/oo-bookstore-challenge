require_relative 'book'
# require_relative 'employee'
require 'csv'

class Store

  attr_reader :time_open, :time_close, :revenue, :store_open, :employees, :books

  def initialize
    @time_open = 10
    @time_close = 21
    @revenue
    # @sections
    @employees = []
    @books = []
    # get_books(500)
    toggle_close
  end

  def hire
    #hires a new employee
  end

  def terminate
    #removes an employee from system
  end

  def parse_books(filename)

    book_information_csv = CSV.read(filename)
    book_information_headers = book_information_csv.shift.map do |header|
      header.to_sym
    end
    counter = 0

    while counter < book_information_csv.count
      book_information_csv[counter] = Hash[book_information_headers zip book_information_csv[counter]]
      @books << Book.new(book_information_csv[counter])
      counter += 1
    end
    p @books
  end

  def toggle_open
    @store_open = true
  end

  def toggle_close
    @store_open = false
  end

end

store = Store.new
p store
store.parse_books("invoice.csv")



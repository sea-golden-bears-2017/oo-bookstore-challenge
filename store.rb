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
    get_books(500)
    toggle_close
  end

  def hire
    #hires a new employee
  end

  def terminate
    #removes an employee from system
  end

  def get_books(quantity)
    book_information_csv = CSV.read("invoice.csv")

    book_information_headers = book_information_csv.shift.map do |header|
      header.to_sym
    end

    #FIXME
    #I need to use Books.new to add books to @books
    #Use CSV to capture books for get_books method
    @books = []
    counter = 0

    while counter < quantity
      book_information_csv[counter]
      @books << "book"
    end
  end

  def toggle_open
    @store_open = true
  end

  def toggle_close
    @store_open = false
  end

end

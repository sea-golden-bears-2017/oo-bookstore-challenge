require_relative 'book'

class BookStore
  attr_reader :books, :employees, :revenue

  def initialize
    @books = []
    @employees = []
    @revenue = 1.0
  end

  def add_book(book)
    @books << book
  end

  def add_employee(employee)
    @employees << employee
  end


end



# bookstore
#
# books
# employees
# revenue
# transactions
#
#
# POS (module)
#
# sell
# purchase
# return
# discount
#
#
# transaction
#
# id
# items
# revenue
# employee_id
# cash
# change
#
#
# employee
#
# name
# position
# id
# auth level

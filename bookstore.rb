require_relative 'book'

class BookStore
  attr_reader :books, :employees, :revenue, :register, :is_open

  def initialize
    @books = []
    @employees = []
    @revenue = 1.0
    @register = CashRegister.new
    @hours = ''
    @sections = ''
    @is_open = true
    ## @inventory including books and other products
  end

  def add_book(book)
    @books << book
  end

  def hire(employee)
    @employees << employee
  end

  def fire(id)
    @employees.delete(@employees.find { |e| e.id == id })
  end

  def open
    @is_open = true
  end

  def close
    @is_open = false
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
# has method that calculates revenue based on combined
# revenue value of each transaction object
#
# sell
# purchase
# return
# discount
# create transaction
#   INPUT: hash
#   OUTPUT: transaction object
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

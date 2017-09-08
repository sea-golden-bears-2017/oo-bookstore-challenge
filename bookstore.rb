require_relative 'book'
require_relative 'employee'
require_relative 'transaction'
require_relative 'discountable'
require 'csv'

class BookStore

  attr_reader :books, :employees, :revenue, :transactions
  attr_accessor :discount
      include Discountable

  def initialize
    @books = []
    @employees = []
    @revenue = 1.0
    @transactions = []
    @discount = nil
    populate_books
  end

  def add_book(book)
    # Takes a Book object
    @books << book
  end


  def build_book(book_hash)
    Book.new(book_hash)
  end

  def add_employee(employee)
    @employees << employee
  end

  def add_transaction(transaction)
    @transactions << transaction
  end

  def populate_books
    book_hashes = parse_csv('invoice.csv')
    book_hashes.each do |hash|
      add_book(Book.new(hash))
    end
  end

  def update_discount(discount_criteria)
    attribute = discount_criteria[:attribute]
    attribute_value = discount_criteria[:attribute_value]
    discount_percentage = discount_criteria[:discount_percentage]
    @discount = Proc.new do |product|
      if product.public_send(attribute) == attribute_value
        discount_percentage
      else
        0
      end
    end
  end



private

  def parse_csv(filename)
    book_hashes = []
    CSV.foreach(filename, {:headers => true, :header_converters => :symbol}) do |row|
      book_hashes << row.to_hash
    end
    book_hashes
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
#   find book in book array
#   update book count
#   build transaction hash
#   initializes new transaction object
#   stuff transaction object into bookstore attr

# return
# purchase new books
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
# type (return or sale)
#
#
#
# employee
#
# name
# position
# id
# auth level

require_relative 'book'

class BookStore
  attr_reader :books, :employees, :revenue, :transactions

  def initialize
    @books = []
    @employees = []
    @revenue = 1.0
    @transactions = []
  end

  def add_book(book)
    # Takes a Book object
    @books << book
  end

  def populate_books
    # Things it needs to do
    # Takes an array of book_hash(es)
    # Make new instance of Book
    # add_book
  end

  def parse_csv(filename)
    # Start with empty book_hashes array
    # Iterate line by line through csv (with headers as symbols)
    # Each line becomes a new hash with headers as keys and line items as values
    # Stuff array with aforementioned hash
    # Output book_hashes filled with book hashes
    

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

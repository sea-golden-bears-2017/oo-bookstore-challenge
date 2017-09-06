require_relative 'book'
# require_relative 'employee'

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
    @books = []
    quantity.times do
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

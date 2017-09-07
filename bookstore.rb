class BookStore
  attr_reader :hours, :books, :sections, :employees, :revenue
  attr_accessor :is_open

  def initialize
    @hours = Range.new(9,18)
    @books = []
    @sections = []
    @employees = []
    @revenue = 0
    @is_open = false
  end

  def open_store
    self.is_open = true
  end

  def close_store
    self.is_open = false
  end

  def hire(employee)
    
  end

  def fire(employee)
    # when declaring the employee class make sure to access the employees using id
    # remember that employee information will be in held of a hash hash[:symbol]

  end
end

class BookStore
  attr_reader :hours, :books, :sections, :employees, :revenue

  def initialize
    @hours = Range.new(9,18)
    @books = []
    # @sections = []
    @employees = []
    @revenue = 0
  end

  def open?
    current_time = Time.now.strftime("%H.%M").to_f
    return true if @hours.include?(current_time)
    false
  end

  def hire(employee)
    @employees << employee
  end

  def fire(employee)
    # when declaring the employee class make sure to access the employees using id
    # remember that employee information will be in held of a hash hash[:symbol]
    @employees.delete(employee)
  end
end

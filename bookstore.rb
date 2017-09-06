class BookStore
  attr_accessor :is_open
  attr_reader :hours, :books, :sections, :employees, :revenue

  def initialize(name)
    @name = name
    @hours = [9,5]
    @books = []
    @sections = ["front", 'back', 'downstairs', 'upstairs', 'Young Adult Fiction']
    @employees = []
    @is_open = false
    @revenue = 0.0
  end

  def hire_employee(name)
    # employees << Employee.new(name)
    p "Connect me to Employee class"
  end

  def fire(id)
    # find the employee with the id
    # set terminated to true
    employees
  end

  def open_store
    @is_open = true
  end

  def close_store
    @is_open = false
  end
end

class BookStore
  attr_reader :books, :employees
  def initialize(args)
    @books = args[:books]
    @hours = args[:hours]
    @employees = args[:employees]
    @sections = args[:sections]
    @revenue = args[:revenue]
  end

  def has_books?
    return true if @books.length > 0
    false
  end

  def hire(employee)
    @employees << employee
  end

  def fire(employee)
    @employees.delete(employee)
  end
end

class BookStore

  attr_reader :books, :employees, :opening_time, :closing_time, :revenue, :sections

  def initialize(args)
    @books = args[:books]
    @hours = args[:hours]
    @employees = args[:employees]
  
    @revenue = args[:revenue]
    @opening_time = args[:opening_time]
    @closing_time = args[:closing_time]
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

  def open?
    true
  end

  def section?(genre)
    @sections.include?(genre)
  end
end

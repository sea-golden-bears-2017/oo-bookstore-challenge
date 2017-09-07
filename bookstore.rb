class BookStore
  attr_reader :books, :employees

  def initialize(args)
    @books = args[:books]
    @hours = Range.new(9,18)
    @employees = args[:employees]
    @sections = args[:sections]
    @revenue = args[:revenue]
    @is_open = open?
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

  def open?(time = Time.now)
    @hours.include?(current_time(time))
  end

  private

  def current_time(time)
    time.strftime('%H.%M').to_f
  end
end

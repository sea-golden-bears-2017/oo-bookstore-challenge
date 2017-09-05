class BookStore
  attr_reader :hours, :sections, :books_inventory, :employees, :open

  def initialize(options)
    @hours = options[:hours]
    @sections = options[:sections]
    @books_inventory = {}
    @employees = {}
    @open = false
    @revenue = 0
  end

  def open?
    @open
  end

  def book_store_open
    @open = true
  end
end

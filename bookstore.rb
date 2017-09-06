




class BookStore

  attr_reader :hours, :books, :sections, :employees, :is_open, :revenue

  def initialize(name)
    @name = name
    @hours = [9,5]
    @books = []
    @sections = ["front", 'back', 'downstairs', 'upstairs', 'Young Adult Fiction']
    @employees = []
    @is_open = false
    @revenue = 0.0
  end

end

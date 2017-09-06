class Store
  attr_reader :hours2, :books, :sections, :employees, :store_open, :revenue

  def initialize(options)
    puts "hours are #{options}"
    @hours2 = options[:hours2],
    # @hours = '9-6'
    @books = options[:books],
    @sections = options[:sections],
    @employees = options[:employees],
    @store_open = options[:store_open],
    @revenue = options[:revenue]
  end

  # def hours
  #   puts "hours are #{@hours}"
  #   return '9-6'
  # end

end

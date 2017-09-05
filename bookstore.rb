class BookStore
  attr_reader :hours, :sections

  def initialize(options)
    @hours = options[:hours]
    @sections = options[:sections]
  end
end

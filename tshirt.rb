require_relative 'product'
require_relative 'appraisable'

class Tshirt < Product
  include Appraisable
  attr_reader :size

  def initialize(options)
    super(options)
    @size = options[:size]
  end

end

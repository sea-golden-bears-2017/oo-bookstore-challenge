require_relative "product"

class TeddyBear < Product
  attr_reader :color, :fuzziness

  def initialize(options)
    super(options)
    @color = options[:color]
    @fuzziness = options[:fuzziness]
  end
end

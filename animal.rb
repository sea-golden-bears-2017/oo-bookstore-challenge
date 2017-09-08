require_relative 'product'

class Animal < Product

  attr_reader :name, :color, :age, :breed

  def initialize(args)
    @name        = args[:name]
    @color       = args[:color]
    @age         = args[:age]
    @breed       = args[:breed]
    super(args)
  end

end

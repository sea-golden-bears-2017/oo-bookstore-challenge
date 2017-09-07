require_relative 'product'

class Cat < Product

  def initialize(args)
    @color       = args[:color]
    @age         = args[:age]
    @breed       = args[:breed]
    @noise_level = args[:noise_level]
    super[args]
  end

end

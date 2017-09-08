require_relative 'animal'
require_relative 'adoptable'

class Unicorn < Animal

  # includes the module adoptable
  include Adoptable

  def initialize(args)
      @horn_length                 = args[:horn_length]
      @can_fly                     = args[:can_fly]
      @glitter_production_capacity = args[:glitter_production_capacity]
    super(args)
  end
end

require_relative 'animal'
require_relative 'adoptable'

class Cat < Animal

  include Adoptable

  attr_reader :meow_volume

  def initialize(args)
    @meow_volume = args[:meow_volume]
    super(args)
  end
end

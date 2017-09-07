require_relative 'animal'

class Cat < Animal

  def initialize(args)
    @meow_volume = args[:meow_volume]
    super(args)
  end
end

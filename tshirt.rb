require_relative 'product'

class TShirt < Product
  attr_reader :size, :color, :manufacturer, :design

    def initialize(args)
      super
      @size = args[:size]
      @color = args[:color]
      @manufacturer = args[:manufacturer]
      @design = args[:design]
    end
end

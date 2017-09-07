class BookStore
 attr_reader :store_closed, :store_hours

  def initialize
    @store_closed = true
    @store_hours = {
      monday: "8am - 5pm",
      tuesday: "8am - 4pm",
      wednesday: "8am - 5pm",
      thursday: "8am - 5pm",
      friday: "8am - 5pm"
    }
    @revenue = 0
  end

  def close_store
    @store_closed = true
  end

  def open_store
    @store_closed = false
  end

  def hours(day)
    sym = day.to_sym
    @store_hours[sym]
  end

  def purchase

  end

end

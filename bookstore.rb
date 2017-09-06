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
    if @store_closed == false
      @store_closed = true
    else
      @store_closed = false
    end
  end

  def open_store
    if @store_closed == true
      @store_closed = false
    else
      @store_closed = true
    end
  end

  def hours(day)
    sym = day.to_sym
    @store_hours[sym]
  end

end

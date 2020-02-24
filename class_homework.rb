class Festival

  def initialize(name, location, ticket_price, acts)
    @name = name
    @location = location
    @ticket_price = ticket_price
    @acts = acts
  end

  def get_name()
    return @name
  end

  def get_location()
    return @location
  end

  def get_ticket_price()
    return @ticket_price
  end

  def get_acts()
    return @acts
  end

  def set_name(new_name)
    @name = new_name
  end

  def set_location(new_location)
    @location = new_location
  end

  def set_ticket_price(new_ticket_price)
    @ticket_price = new_ticket_price
  end



end

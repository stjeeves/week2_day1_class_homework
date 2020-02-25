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

  def add_new_acts(new_act)
    @acts.push(new_act)
  end

  def check_acts(act)
    @acts.any?(act)
  end

  def total_acts()
    @acts.count
  end

  def remove_acts(act)
    @acts.delete(act)
    return @acts
  end

  def increase_ticket_price(increase)
    @ticket_price += increase
    return @ticket_price
  end

  def check_total_acts(new_act)
    if @acts.count >= 3
      @acts.push(new_act)
    end
  end



end

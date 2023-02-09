class Dealership
  attr_reader :name, :address, :inventory
  def initialize(name, address)
    @name = name
    @address = address
    @inventory = []
  end

  def inventory_count
    @inventory.length
  end

  def add_car(car)
    @inventory << car
  end

  def has_inventory?
    if inventory_count > 0
      true
    else
      false
    end
  end
#def has_inventory?
# inventory_count > 0
# end
  def cars_by_make(make)
    @inventory.find_all do |cars|
      cars.make == make
    end
  end

  def total_value
    @inventory.sum do |car|
      car.total_cost
    end
  end

end
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
      return true
    else
      return false
    end
  end

  def cars_by_make(make)
    @inventory.find_all do |cars|
      cars.make == make
    end
  end

  def total_value
    total = @inventory.


end
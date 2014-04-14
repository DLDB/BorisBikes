class DockingStation
 
  DEFAULT_CAPACITY = 10

  def initialize(options = {})
    @capacity = options.fetch(:capacity, DEFAULT_CAPACITY)
    @bikes = []
  end

  def bike_count
    @bikes.count
  end

  def dock(bike)
    @bikes << bike
  end

  def release(bike)
    @bikes.pop
  end

  def full?
    return false if bike_count < 20
    true
  end

end


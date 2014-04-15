require_relative './bike_container'
class DockingStation
  
  DEFAULT_CAPACITY = 10
  include BikeContainer

  def initialize(options = {})
  # self.capacity is calling the capacity=() method
  # (note the equals sign) defined in BikeContainer
  # capacity (the second argument to fetch()) is calling
  # the capacity() method in BikeContainer
  self.capacity = options.fetch(:capacity, capacity)
  self.bikes
  end

  def dock(bike)
    @bikes << bike
  end

  def release(bike)
    @bikes.pop
  end

  def full?
    return false if bike_count < capacity
    true
  end

  def available_bikes
    @bikes.select {|bike| !bike.broken?} 
  end
end


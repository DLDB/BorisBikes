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

  alias :dock :load

  alias :release_functioning :offload_functioning

  alias :release_broken :offload_broken

  alias :available_bikes :functioning_bikes
  #   @bikes.select {|bike| !bike.broken?} 
  # end
end


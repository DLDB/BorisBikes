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

  alias :release_functioning_bike :offload_functioning_bike

  alias :release_broken_bike :offload_broken_bike

  alias :available_bikes :functioning_bikes

end


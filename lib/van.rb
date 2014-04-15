require_relative('./bike_container')

class Van
  include BikeContainer

  def initialize(options = {})
    self.capacity = options.fetch(:capacity, capacity)
    self.bikes
  end

  alias :pickup :load

  def should_collect?(station)
    @bikes.count < capacity && station.broken_bikes.count >= 1 
  end


  def demand_bikes_from(station)
    while should_collect?(station) do
      collected_bike = station.release_broken_bike
      pickup(collected_bike)
    end
  end

end
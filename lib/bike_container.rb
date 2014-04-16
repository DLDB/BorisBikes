module BikeContainer

  DEFAULT_CAPACITY = 10

  def initialize(options = {})
    self.capacity = options.fetch(:capacity, capacity)
    self.bikes
  end

  # when created container should have an empty array of bikes
  def bikes
    @bikes ||= []
  end

  # it should have a capacity
  def capacity
    @capacity ||= DEFAULT_CAPACITY
  end

  def capacity=(value)
    @capacity = value
  end

  
  # the container should be able to count the bikes
  def bike_count
    @bikes.count
  end

  #it should be able to accept a bike
  def load(bike)
    @bikes << bike
  end

  #it should be able to release a functional bike
  def offload_functioning_bike
    released_bike = functioning_bikes.pop
    @bikes.delete(released_bike)
    released_bike
  end 

  #it should provide a list of functioning bikes
  def functioning_bikes
    @bikes.reject {|bike| bike.broken?}
  end

  #it should provide a list of broken bikes
  def broken_bikes
    @bikes.select {|bike| bike.broken?}
  end

  #REPETITION!!
  def offload_broken_bike
    released_bike = broken_bikes.pop
    @bikes.delete(released_bike)
    released_bike
  end

  #it should know when it's full
  def full?
    bike_count >= capacity
  end

  def should_collect?(container)
    !self.full? && container.broken_bikes.count >= 1 
  end

  def demand_bikes_from(container)
    while should_collect?(container) do
      collected_bike = container.release_broken_bike
      pickup(collected_bike)
    end
  end
  
end
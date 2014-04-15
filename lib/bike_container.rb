module BikeContainer

  DEFAULT_CAPACITY = 10

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

  #it should be able to release a bike
  def offload(bike)
    @bikes.pop
  end 

  #it should provide a list of functioning bikes
  def functioning_bikes
    @bikes.reject {|bike| bike == @broken}
  end

  #it should provide a list of broken bikes
  def broken_bikes
    @bikes.select {|bike| bike == @broken}
  end

  #it should know when it's full
  def full?
    bike_count == capacity
  end
end
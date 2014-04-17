class Person


  attr_reader :bike

  def rent_a_bike_from(station)
    @bike = (station.offload_functioning_bike)
  end

  def returns_their_bike_to(station)
    station.load(@bike)
    @bike=nil 
  end

  def crashes!
    @bike.break!
  end

end

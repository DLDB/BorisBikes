require_relative './bike_container'

class Garage

  include BikeContainer

  def repair!(bike)
    bike.fix!
  end


end
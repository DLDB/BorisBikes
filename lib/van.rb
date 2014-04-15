require_relative('./bike_container')

class Van
  include BikeContainer
  def initialize(options = {})
    self.capacity = options.fetch(:capacity, capacity)
    self.bikes
  end

  alias :pickup :load

end
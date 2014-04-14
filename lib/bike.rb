class Bike
 
  @broken = false

  def broken?
    @broken 
  end

  def break!
    @broken = true
    self
  end

  def fix!
    @broken = false
  end

end


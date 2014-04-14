#we're describing the functionality of Bike class
require_relative '../lib/bike' 
describe Bike do
  #this is a specific feature (behaviour)
  #that we expect to be present

  it "should not be broken after we create it" do
    bike = Bike.new #initialize a new instance
    expect(bike).not_to be_broken
  end
end


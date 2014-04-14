#we're describing the functionality of Bike class
require_relative '../lib/bike' 
describe Bike do
  #this is a specific feature (behaviour)
  #that we expect to be present
  
  #this is to avoid repetition
  let(:bike) {Bike.new}
  it "should not be broken after we create it" do
    expect(bike).not_to be_broken
  end

  it 'should be able to break' do
    bike.break!
    expect(bike).to be_broken
  end

  it 'should be able to be fixed' do
    bike.break!
    bike.fix!
    expect(bike).not_to be_broken
  end

end


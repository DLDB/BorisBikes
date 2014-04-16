require 'garage'
require 'bike_container_spec'

describe Garage do
  it_should_behave_like 'BikeContainer'
  let (:broken_bike){double :bike}
  let (:garage){Garage.new}

  it 'should be able to command broken bikes to be fixed' do
    expect(broken_bike).to receive(:fix!)
    garage.repair!(broken_bike)
    end 

end
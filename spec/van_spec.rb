require 'van'

describe 'Van' do
  let(:van){Van.new}
  let(:bike){double :bike}
  let(:broken_bike){double :bike, broken?: true}
  #let(:station){double :station}
  it 'should start with no bikes' do
    expect(van.bike_count).to eq 0
  end  

  it 'should be able to accept bikes' do
    van.pickup(bike)
    expect(van.bike_count).to eq 1
	end

  it 'should get a broken bike from a station' do
    station = double :station, offload_broken_bike: broken_bike
    transferred_bike = station.offload_broken_bike
    van.pickup(transferred_bike)
    expect(van.bike_count).to eq 1
  end

end
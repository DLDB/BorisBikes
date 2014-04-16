require 'van'

describe 'Van' do
  let(:van){Van.new}
  let(:bike){double :bike}
  let(:broken_bike){double :bike, broken?: true}
  let(:station){double :station, release_broken_bike: broken_bike, broken_bikes: [bike]}
  #let(:station){double :station}
  
  it 'should start with no bikes' do
    expect(van.bike_count).to eq 0
  end  

  it 'should be able to accept bikes' do
    van.pickup(bike)
    expect(van.bike_count).to eq 1
	end

  it 'should get a broken bike from a station' do
    # station = double :station, offload_broken_bike: broken_bike
    transferred_bike = station.release_broken_bike
    van.pickup(transferred_bike)
    expect(van.bike_count).to eq 1
  end

  it 'should demand broken bikes until it reaches capacity' do
    van.demand_bikes_from(station)
    expect(van.bike_count).to eq 10
  end

  it 'should know when there is space on the van and a bike to be collected' do
    expect(van.should_collect?(station)).to be_true
  end




end
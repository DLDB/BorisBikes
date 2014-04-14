require 'station'

describe DockingStation do

  let (:station) {DockingStation.new(:capacity=>20)}
  let (:bike) {double(:bike, {})}

  it 'should start with no bikes' do
    #we expect the station to have 0 bikes
    expect(station.bike_count).to eq 0
  end
    #now we dock a bike
  it 'should dock a bike' do  
    station.dock(bike)
    #now we expect the station to have 1 bike
    expect(station.bike_count).to eq 1
  end

  it 'should release a bike' do
    station.dock(bike)
    station.release(bike)
    expect(station.bike_count).to eq(0)
  end

  it "should know when it's full" do
    expect(station).not_to be_full
    20.times { station.dock(bike) }
    expect(station).to be_full
  end





end

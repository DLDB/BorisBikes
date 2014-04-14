require 'station'

describe DockingStation do

  let (:station) {DockingStation.new}
  
  it 'should start with no bikes' do
    #we expect the station to have 0 bikes
    expect(station.bike_count).to eq 0
  end
    #now we dock a bike
  it 'should dock a bike' do  
    bike = double(:bike, {})
    station.dock(bike)
    #now we expect the station to have 1 bike
    expect(station.bike_count).to eq 1
  end







end

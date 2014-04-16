require 'station'
require 'bike_container_spec'

describe DockingStation do
  it_should_behave_like "BikeContainer"


  let (:station) {DockingStation.new}
  let (:bike) {double :bike}
  let (:van) {double :van}

  def load_bike_doubles_into_(station)
    working_bike = double :bike, broken?: false
    broken_bike = double :bike, break!: true, broken?: true
    station.dock(working_bike)
    station.dock(broken_bike)
  end

  # it 'should start with no bikes' do
  #   #we expect the station to have 0 bikes
  #   expect(station.bike_count).to eq 0
  # end
    #now we dock a bike
  # it 'should dock a bike' do  
  #   station.dock(bike)
  #   #now we expect the station to have 1 bike
  #   expect(station.bike_count).to eq 1
  # end

  # it 'should release a functioning bike' do
  #   load_bike_doubles_into_(station)
  #   station.release_functioning_bike
  #   expect(station.bike_count).to eq(1)
  # end

  # it "should know when it's full" do
  #   expect(station).not_to be_full
  #   20.times { station.dock(bike) }
  #   expect(station).to be_full
  # end

  # it 'should provide the list of functioning bikes' do
  #   load_bike_doubles_into_(station)
  #   expect(station.available_bikes.count).to eq 1
  # end

  # it 'should release a broken bike' do
  #   load_bike_doubles_into_(station)
  #   station.release_broken_bike
  #   expect(station.functioning_bikes.count).to eq 1
  #   expect(station.broken_bikes.count).to eq 0
  # end

  # it 'functioning_bikes returns an array containing only non-broken bikes' do
  #   load_bike_doubles_into_(station)
  #   expect(station.available_bikes.count).to eq 1
  # end
    




end

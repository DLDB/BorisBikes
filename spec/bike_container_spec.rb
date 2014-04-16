require_relative '../lib/bike_container'

class ContainerHolder
  include BikeContainer
end

shared_examples "BikeContainer" do
  
  let (:holder) {ContainerHolder.new}
  let (:bike) {double :bike}

  def load_bike_doubles_into_(holder)
    working_bike = double :bike, broken?: false
    broken_bike = double :bike, break!: true, broken?: true
    holder.load(working_bike)
    holder.load(broken_bike)
  end

  it 'should start with no bikes' do
    #we expect the holder to have 0 bikes
    expect(holder.bike_count).to eq 0
  end

  it 'should load a bike' do  
    holder.load(bike)
    #now we expect the holder to have 1 bike
    expect(holder.bike_count).to eq 1
  end

  it 'should offload a functioning bike' do
    load_bike_doubles_into_(holder)
    holder.offload_functioning_bike
    expect(holder.bike_count).to eq(1)
  end

  it "should know when it's full" do
    expect(holder).not_to be_full
    10.times { holder.load(bike) }
    expect(holder).to be_full
  end

  it 'should provide the list of functioning bikes' do
    load_bike_doubles_into_(holder)
    expect(holder.functioning_bikes.count).to eq 1
  end

  it 'should offload a broken bike' do
    load_bike_doubles_into_(holder)
    holder.offload_broken_bike
    expect(holder.functioning_bikes.count).to eq 1
    expect(holder.broken_bikes.count).to eq 0
  end

  it 'can return an array containing only non-broken bikes' do
    load_bike_doubles_into_(holder)
    expect(holder.functioning_bikes.count).to eq 1
  end

end
require 'person'

describe Person do
  let (:person){Person.new}
  let (:bike){double :bike, broken?: false }
  let (:station){double :station, offload_functioning_bike: bike}
  
  it 'should not have a bike when created' do
    expect(person.bike).to be_nil
  end

  it 'should rent a bike from a docking station' do
    expect(station).to receive(:offload_functioning_bike)
    person.rent_a_bike_from(station)
  end

  it 'should have a bike after renting' do
    person.rent_a_bike_from(station)
    expect(person.bike).to eq bike
  end

  it 'should be able to return a bike' do
    expect(station).to receive :load 
    expect(person.bike).to be_nil 
    person.returns_their_bike_to(station)
  end

  it 'should be able to break a bike' do
    expect(bike).to receive(:break!)
    person.rent_a_bike_from(station) 
    person.crashes!
  end
end

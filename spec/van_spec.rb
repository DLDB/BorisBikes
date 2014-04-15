require 'van'

describe 'Van' do
  let(:van){Van.new}
  let(:bike){double :bike}
  it 'should start with no bikes' do
    expect(van.bike_count).to eq 0
  end  

  it 'should be able to accept bikes' do
    van.pickup(bike)
    expect(van.bike_count).to eq 1
	  end
end
require 'garage'

describe 'Garage' do
  let (:broken_bike){double :bike, broken?: false, fix!: :thisvaluedontmatter}
  let (:garage){Garage.new}

  it 'should be able to command broken bikes to be fixed' do
    garage.repair!(broken_bike)
    expect(broken_bike.broken?).to be_false
    end 





end
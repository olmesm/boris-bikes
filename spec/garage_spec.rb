require 'garage'
describe Garage do
  let(:bad_bike) { double(:Bike, working?: false) }
  let(:good_bike) { double(:Bike, working?: true) }
  let(:van) { double(:Van, :loaded_bikes => [bad_bike]) }

  it 'garage allows van to unload bikes' do
    expect(subject).to respond_to(:unload_bikes).with(1).argument
  end

  it 'garage receives bikes from van and fixes them' do
    allow(van).to receive(:loaded_bikes=)
    subject.unload_bikes(van)
    expect(subject.garage_bikes).to eq [bad_bike]
  end
end

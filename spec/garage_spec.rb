require 'garage'
describe Garage do
  let(:bike) { double(:Bike, working?: false) }
  let(:van) { double(:Van, :loaded_bikes => [bike]) }

  it 'garage allows van to unload bikes' do
    expect(subject).to respond_to(:unload_bikes).with(1).argument
  end

  it 'garage receives bikes from van' do
    allow(van).to receive(:loaded_bikes=)
    subject.unload_bikes(van)
    expect(subject.garage_bikes).to eq [bike]
  end
end

require 'van'

describe Van do
  let(:good_bike) { double(:bike, working?: true) }
  let(:bad_bike) { double(:bike, working?: false) }
  let(:station) { double(:DockingStation, bikes: [good_bike, bad_bike]) }

  it 'has the collect bikes method' do
    expect(subject).to respond_to(:collect_broken_bikes).with(1).argument
  end

  it 'should access the broken bikes in the Docking Station' do
    allow(station).to receive(:bikes=)
    expect(subject.collect_broken_bikes(station)).to eq [bad_bike]
  end

=begin
  it 'has the collect bikes method' do
    expect(subject).to respond_to(:deliver_broken_bikes).with(1).argument
  end
  it 'should empty the van when delivering to garage' do
    garage = []
    expect(subject.deliver_broken_bikes(garage)).to eq []
  end

  it 'garage should receive all bikes from van' do
    garage = []
    allow(station).to receive(:bikes=)
    subject.collect_broken_bikes(station)
    subject.deliver_broken_bikes(garage)
    expect(garage).to eq [bad_bike]
  end
=end
end

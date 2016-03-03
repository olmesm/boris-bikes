require 'docking_station'

describe DockingStation do
  let(:good_bike) { double(:bike, working?: true) }
  let(:bad_bike) { double(:bike, working?: false) }

  it { is_expected.to respond_to :release_bike }
  it { is_expected.to respond_to(:dock).with(1).argument }
  it { is_expected.to respond_to(:bikes) }

  describe 'create docking station' do
    it 'if no arguments default capacity is 20' do
      expect(subject.capacity).to eq 20
    end

    it 'when given 10 capacity is set to 10' do
      expect(DockingStation.new(10).capacity).to eq 10
    end
  end

  describe '#release_bike' do
    it 'cannot release broken bike' do
      subject.dock bad_bike
      expect { subject.release_bike }.to raise_error 'No bikes working'
    end

    it 'releases a bike' do
      subject.dock good_bike
      expect(subject.release_bike).to eq good_bike
    end

    it 'raises an error when there are no bikes available' do
      expect { subject.release_bike }.to raise_error 'No bikes available'
    end
  end

  describe 'docking bike' do
    it 'docks something' do
      expect(subject.dock good_bike).to eq [good_bike]
    end

    it 'raises an error when the docking station is full' do
      subject.capacity.times { subject.dock good_bike }
      expect { subject.dock good_bike }.to raise_error 'Docking station full'
    end

    it 'returns docked bikes' do
      expect(subject.dock good_bike).to eq [good_bike]
    end
  end

#   describe "collecting broken bikes" do
#     it { is_expected.to respond_to :release_broken_bikes}
#
#     context "when given a broken bike and good bike" do
#       it "releases a broken bike" do
#         subject.dock bad_bike
#         subject.dock good_bike
#         expect(subject.release_broken_bikes).to eq [bad_bike]
#       end
#     end
#
#     context "when given a good bike" do
#       it "releases no bikes" do
#         subject.dock good_bike
#         expect(subject.release_broken_bikes).to eq []
#       end
#     end
#   end
end

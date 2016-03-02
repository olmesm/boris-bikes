
require "docking_station"

describe DockingStation do
  it { is_expected.to respond_to (:release_bike) }

  it 'releases working bikes' do
    bike = Bike.new
    subject.dock bike
    bike = subject.release_bike
    expect(bike).to be_working
  end

  it 'has a dock method which takes one argument' do
    expect(subject).to respond_to(:dock).with(1).arguments
  end

  it 'docks a bike' do
    bike = Bike.new
    expect(subject.dock(bike)).to eq bike
  end

  it { is_expected.to respond_to (:bike)}

  it 'shows the docked bike' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq bike
  end

  it "raises error if no bikes" do
    # be wary of {} and () - literal meaning of outputs
    expect {subject.release_bike}.to raise_error("Sorry no bikes!")
  end

  it "won't dock bikes if full" do
    subject.dock(Bike.new)
    expect {subject.dock(Bike.new)}.to raise_error("Too many bikes!")
  end
end

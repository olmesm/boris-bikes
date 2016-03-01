require 'docking_station'

describe DockingStation do

  let(:bike) {DockingStation.new.release_bike}

  it {is_expected.to respond_to(:release_bike)}

  it 'releases a bike' do
    expect(bike).to be_a Bike
  end

  it 'can test bike works' do
    expect(bike).to respond_to :working?
  end

  it 'bike works' do
    expect(bike).to be_working
  end

  it 'docks a bike' do
    expect(subject).to respond_to(:dock).with(1).argument
  end

  it 'stores bikes' do
    expect(subject).to respond_to(:bikes)
  end

  it 'docks given bike' do
    subject.dock(bike)
    expect(subject.bikes).to eq(bike)
  end

end

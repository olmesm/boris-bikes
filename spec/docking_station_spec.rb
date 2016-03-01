require 'docking_station'

describe DockingStation do

  # try not to use - but for reference,
  # let(:bike) {Bike.new}

  it {is_expected.to respond_to(:release_bike)}

  it 'releases a bike' do
    subject.dock(Bike.new)
    expect(subject.release_bike).to be_a Bike
  end

  it 'can test bike works' do
    expect(Bike.new).to respond_to :working?
  end

  it 'bike works' do
    expect(Bike.new).to be_working
  end

  it 'docks a bike' do
    expect(subject).to respond_to(:dock).with(1).argument
  end

  it 'stores bikes' do
    expect(subject).to respond_to(:bikes)
  end

  it 'docks given bike' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bikes).to eq(bike)
  end

  it 'raises exception when no bikes to release' do
    expect{subject.release_bike}.to raise_error 'No bikes to release' if subject.bikes.nil?
  end

end

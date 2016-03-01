require 'docking_station'

describe DockingStation do

  it {is_expected.to respond_to(:release_bike)}

  it 'releases a bike' do
    station = DockingStation.new
    bike = station.release_bike
    expect(bike).to be_a Bike
  end

end

describe 'Released bike' do

  it 'has method working?' do
    bike = DockingStation.new.release_bike
    expect(bike).to respond_to :working?
  end

end

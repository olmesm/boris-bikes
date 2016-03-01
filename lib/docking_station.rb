require_relative 'bike'

class DockingStation

  attr_reader :bikes

  def release_bike
    fail "No bikes to release" if @bikes.nil?
    Bike.new
  end

  def dock bike
    @bikes = bike
  end

end

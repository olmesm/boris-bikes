class Van
  attr_accessor :loaded_bikes
  def collect_broken_bikes(docking_station)
    @loaded_bikes = docking_station.bikes.reject(&:working?)
    docking_station.bikes -= @loaded_bikes
    @loaded_bikes
  end

  def collect_fixed_bikes(garage)
    @loaded_bikes = garage.garage_bikes.select(&:working?)
    garage.garage_bikes -= @loaded_bikes
    @loaded_bikes
  end
end

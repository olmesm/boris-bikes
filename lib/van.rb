class Van
  def collect_broken_bikes(docking_station)
    @loaded_bikes = docking_station.bikes.reject(&:working?)
    docking_station.bikes -= @loaded_bikes
    @loaded_bikes
  end
end

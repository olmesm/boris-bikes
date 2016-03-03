class Van
  def collect_broken_bikes(docking_station)
    @loaded_bikes = docking_station.bikes.reject(&:working?)
    docking_station.bikes -= @loaded_bikes
    @loaded_bikes
  end

  def deliver_broken_bikes(garage)
    @loaded_bikes.each {|bike| garage << bike}
    @loaded_bikes = []
  end
end

# attr_reader :bikes
# class.bikes
#
# attr_writer :bikes
#
# class.bikes=
# attr_accessor :bikes
#
# class.bikes
# class.bikes=

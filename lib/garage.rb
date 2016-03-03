class Garage
  attr_accessor :garage_bikes

  def unload_bikes(van)
    @garage_bikes = van.loaded_bikes
    van.loaded_bikes -= @garage_bikes
    @garage_bikes
  end


  def fix_bikes
    @garage_bikes.each { |bike| bike.working = true  }
  end
end

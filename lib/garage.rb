class Garage
  attr_reader :garage_bikes

  def unload_bikes(van)
    @garage_bikes = van.loaded_bikes
    van.loaded_bikes -= @garage_bikes
    @garage_bikes
  end

private
  def fix_bikes
    @garage_bikes.each { |bike| bike.working = true  }
  end
end

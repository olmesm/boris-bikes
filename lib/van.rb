class Van
  def collect_broken_bikes docking_station
    @loaded_bikes = docking_station.bikes.reject { |bike| bike.working? }
    docking_station.bikes -= @loaded_bikes
    @loaded_bikes
  end
end



=begin
attr_reader :bikes
class.bikes

attr_writer :bikes

class.bikes=
attr_accessor :bikes

class.bikes
class.bikes=
=end

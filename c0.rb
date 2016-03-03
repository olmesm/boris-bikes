require "./lib/van.rb"
require "./lib/docking_station.rb"
require "./lib/garage.rb"

good_bike = Bike.new
bad_bike = Bike.new
bad_bike.report_broken

station = DockingStation.new
station.dock good_bike
station.dock bad_bike
p station

van = Van.new
p van
garage = Garage.new

van.collect_broken_bikes station
p station
p van

garage.unload_bikes van
p garage
p van

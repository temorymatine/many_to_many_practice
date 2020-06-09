require_relative '../config/environment.rb'
require_relative '../app/models/tourist.rb'
require_relative '../app/models/landmark.rb'
require_relative '../app/models/trip.rb'

# create your variables and/or write any tests here

statue_of_lib = Landmark.new("Statue of Liberty", "New York")
john = Tourist.new("John")
trip1 = Trip.new(statue_of_lib, john)

binding.pry

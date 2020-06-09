require_relative '../config/environment.rb'
require_relative '../app/models/tourist.rb'
require_relative '../app/models/landmark.rb'
require_relative '../app/models/trip.rb'

# create your variables and/or write any tests here

#initializing variables
statue_of_lib = Landmark.new("Statue of Liberty", "New York")
washington_monument = Landmark.new("Washington Monument", "Washington D.C.")
grand_canyon = Landmark.new("Grand Canyon", "Flagstaff")
john = Tourist.new("John")
shawn = Tourist.new("Shawn")
matine = Tourist.new('Matine')
johnny = Tourist.new('John')
trip1 = Trip.new(statue_of_lib, john)
trip2 = Trip.new(statue_of_lib, shawn)
trip3 = Trip.new(grand_canyon, matine)
trip4 = Trip.new(grand_canyon, john)


binding.pry

require_relative '../config/environment.rb'
require 'pry'

# create your variables and/or write any tests here

buffy = Tourist.new("Buffy Summers")
willow = Tourist.new("Willow Rosenberg")
xander = Tourist.new("Xander Harris")

bronze = Landmark.new("The Bronze", "Sunnydale")
hellmouth = Landmark.new("The Hellmouth", "Sunnydale")
puts "Tourist knows their name"
puts buffy.name == "Buffy Summers"

puts "Tourist.all returns all tourists"
puts Tourist.all == [buffy, willow, xander]

puts "Can find Tourist by name"
puts Tourist.find_by_name("Willow Rosenberg") == willow

puts "Can find all Landmarks"
puts Landmark.all == [bronze, hellmouth]

puts "can find landmarks by city"
angel_investigations = Landmark.new("Angel Investigations", "Los Angeles")
puts Landmark.find_by_city("Sunnydale") == [bronze, hellmouth]

trip1 = Trip.new(buffy, angel_investigations)
trip2 = Trip.new(willow, bronze)
trip3 = Trip.new(buffy, hellmouth)

puts "Trip.all?"
puts Trip.all == [trip1, trip2, trip3]

puts "Trip knows Tourist?"
puts trip1.tourist == buffy 

puts "Trip knows Landmark?"
puts trip2.landmark == bronze

puts buffy.trips == [trip1, trip3]
puts buffy.landmarks == [angel_investigations, hellmouth]

trip4 = willow.visit_landmark(hellmouth)
puts trip4.tourist == willow
puts trip4.landmark == hellmouth

puts hellmouth.trips == [trip3, trip4]
puts hellmouth.tourists == [buffy, willow]
binding.pry
0

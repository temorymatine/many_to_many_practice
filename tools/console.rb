require_relative '../config/environment.rb'

# create your variables and/or write any tests here

rhonda = Tourist.new("Rhonda")
beth = Tourist.new("Beth")
rhonda2 = Tourist.new("Rhonda")

eiffel_tower = Landmark.new("Eiffel Tower", "Paris")
big_ben = Landmark.new("Big Ben", "London")
ollivanders = Landmark.new("Ollivander's", "Diagon Alley")
marsh = Landmark.new("Madam Marsh's", "Diagon Alley")

puts "Knows all Landmarks"
puts Landmark.all.include?(eiffel_tower)
puts Landmark.all.include?(big_ben)

puts "find_all_by_city"
puts Landmark.find_all_by_city("Diagon Alley").include?(ollivanders)
puts Landmark.find_all_by_city("Diagon Alley").include?(marsh)
puts Landmark.find_all_by_city("Diagon Alley").include?(marsh)
jane = Tourist.new("Jane")

trip1 = Trip.new(jane, eiffel_tower)
trip2 = Trip.new(rhonda, big_ben)
trip3 = Trip.new(beth, ollivanders)

puts "Tourist knows all their trips"
puts rhonda.trips.include?(trip2)
puts !rhonda.trips.include?(trip3)

puts "Tourist knows their landmarks"
puts rhonda.landmarks.include?(big_ben)

puts "Landmark knows its trips"
puts eiffel_tower.trips.include?(trip1)

puts "Landmark knows its tourists"
puts eiffel_tower.tourists.include?(jane)

binding.pry
"hi"

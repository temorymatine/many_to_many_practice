class Landmark
  @@all = []

  attr_accessor :name, :city

  def initialize(name,city)
    @name = name
    @city = city
    @@all << self
  end

  def self.all
    @@all 
  end

  def self.find_by_city(city)
    self.all.select {|landmark| landmark.city == city}
  end

  def trips
    Trip.all.select {|trip| trip.landmark == self}
  end

  def tourists
    self.trips.collect {|trip| trip.tourist}
  end
end

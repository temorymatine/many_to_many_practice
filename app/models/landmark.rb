# put your Landmark model here
class Landmark

    attr_accessor :name, :city

    @@all = []

    def initialize(name, city)
        @name, @city = name, city
        @@all << self
    end

    def self.all 
        @@all
    end

    def self.find_by_city(city)
        self.all.select do |landmark|
            landmark.city == city
        end
    end

    def trips
        # returns an **array** of all 
        # the trips taken to a given landmark
        Trip.all.select {|trip| trip.landmark == self}
    end

    def tourists
        # returns an **array** 
        # of all the tourists at a given landmark
        self.trips.collect {|trip| trip.tourist}
    end


end
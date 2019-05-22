class Landmark

    @@all = []
    attr_reader :city, :name

    def initialize(name, city)
        @name, @city = name, city
        @@all << self
    end

    def self.all 
        @@all 
    end

    # def city
    #     return @city
    # end

    def self.find_all_by_city(city)
        # returns all landmarks in the city

        self.all.select do |landmark|
            landmark.city == city 
        end
    end

    def trips
          # - returns an **array** of all the trips taken to a given landmark
        Trip.all.select do |trip|
            trip.landmark == self
        end
    end

    def tourists
        self.trips.map do |trip|
            trip.tourist
        end
    end

end









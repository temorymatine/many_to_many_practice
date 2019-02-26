# put your Tourist model here

class Tourist

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def self.find_by_name(name)
        Tourist.all.find do |tourist|
            tourist.name == name
        end
    end

    def trips  
        Trip.all.select do |trip|
            trip.tourist == self
        end
    end

    def landmarks
        self.trips.collect do |trip|
            trip.landmark
        end
    end

    def visit_landmark(landmark)
        # create a new trip for this tourist
        # to given landmark
        Trip.new(self, landmark)
    end
end
# put your Tourist model here
class Tourist

    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all 
        @@all 
    end

    # def name
    #     return @name
    # end

    def self.find_by_name(name)
        Tourist.all.find do |tourist|
            tourist.name == name
        end
    end

    def self.select_by_name(name)
        Tourist.all.select do |tourist|
            tourist.name == name
        end
    end

    def introduce_self
        "Hi my name is #{self.name}"
    end

    def trips
        # rhonda.trips
        # returns an **array** of all the trips taken by the given `Tourist`
        Trip.all.select do |trip|
            trip.tourist == self
        end
    end

    def landmarks
        # returns all the landmarks
        self.trips.collect do |trip|
            trip.landmark
        end
    end

    def landmark_names
        # returns an **array** of the names of the landmarks as strings
        self.landmarks.map do |landmark|
            landmark.name
        end
    end

    def landmark_cities
        self.landmarks.map do |landmark|
            landmark.city
        end
    end

    def visit_landmark(landmark)
        # create a new trip for that tourist to the given landmark
        Trip.new(self, landmark)

    end

end















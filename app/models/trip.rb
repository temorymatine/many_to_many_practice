# put your Trip model here

class Trip
    # join table between Tourist and Landmark

    attr_accessor :tourist, :landmark

    @@all = []

    def initialize(tourist, landmark)
        @tourist, @landmark = tourist, landmark
        @@all << self
    end

    def self.all 
        @@all 
    end

end
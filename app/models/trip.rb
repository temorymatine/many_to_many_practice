class Trip
@@all = []

attr_accessor :landmark, :tourist

def initialize(landmark, tourist)

    @landmark = landmark
    @tourist = tourist
    @@all << self

end

def self.all
    @@all
end


def tourists

end

def landmark

end


end
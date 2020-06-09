class Tourist
@@all = []

attr_accessor :name

def initialize(name)

    @name = name
    @@all << self
end

def self.all

    @@all 

end

def self.find_by_name(name)

end

def trips
end

def landmarks
end

def visit_landmark(landmark)
end

def never_visited
end

end

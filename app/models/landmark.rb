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
    
end

def trips

end

def tourists

end

end
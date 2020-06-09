class Trip
  @@all = []

  attr_reader :landmark, :tourist

  def initialize(landmark, tourist)

    @landmark = landmark
    @tourist = tourist
    @@all << self

  end

  def self.all
    @@all
  end
end

class Ride
    attr_accessor :passenger, :driver, :distance

    @@all = []

    def initialize(passenger, driver, distance)
        @passenger = passenger
        @driver = driver
        @distance = distance.to_f
        @@all << self
    end

    def self.all
        @@all
    end

    def passenger
        @passenger
    end

    def driver
        @driver
    end

    # def average_distance
    #     Ride.all.reduce(0) do |sum, ride|
    #         (sum + ride.distance) / self.all.length
    #     end
    # end

# - .average_distance
#   - should find the average distance of all rides

end
class Ride
    attr_accessor :passenger, :driver, :distance

    @@all = []

    def initialize(passenger,driver,distance)
        @passenger = passenger
        @driver = driver
        @distance = distance.to_f
        Ride.all << self
    end

    def self.all
        @@all
    end

    def self.average_distance
        total_distance = 0
        Ride.all.each do |ride|
            total_distance += ride.distance
        end
        average = total_distance / Ride.all.count
        average
    end
    
end
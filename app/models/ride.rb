class Ride
    @@all = []
    attr_accessor :passenger,:driver,:distance
    
    def initialize(passenger,driver,distance)
        @passenger = passenger
        @driver = driver
        @distance = distance
        Ride.all << self
    end

    def self.all 
        @@all
    end

    def self.average_distance
        list_of_all_rides_distance = self.all.map{|x| x.distance}
        sum_distance_of_all_ride = list_of_all_rides_distance.reduce{|sum,num| sum+num}
        sum_distance_of_all_ride / self.all.count
    end


end 
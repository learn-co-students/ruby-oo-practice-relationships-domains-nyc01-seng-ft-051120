class Listing
    @@all = []
    attr_accessor :city 

    def initialize(city)
        @city = city
        Listing.all << self
    end

    def trips
        Trip.all.select{|x| x.listing == self}
    end

    def trip_count 
        self.trips.count 
    end

    def guests
        self.trips.map{|x| x.guests}
    end

    def self.all 
        @@all
    end

    def self.find_all_by_city(city)
        self.all.select{|x| x.city == city}
    end

    def self.most_popular
        self.all.max {|listing1, listing2| listing1.trip_count <=> listing2.trip_count }
    end
end
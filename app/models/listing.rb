class Listing
    attr_accessor :city

    @@all = []

    def initialize(city)
        @city = city
        Listing.all << self
    end

    def self.all
        @@all
    end

    def trips
        Trip.all.select do |trip|
            trip.listing == self
        end
    end

    def trip_count
        trips.count
    end

    def guests
        trips.map do |trip|
            trip.guest
        end
    end

    def self.find_all_by_city(city)
        Listing.all.select do |listing|
            listing.city == city
        end
    end

    def self.most_popular
        highest_number_trips = 0
        Listing.all.max_by do |listing|
            listing.trips.count
         end
    end
end
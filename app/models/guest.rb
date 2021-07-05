class Guest
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        Guest.all << self
    end

    def self.all
        @@all
    end

    def trips
        Trip.all.select do |trip|
            trip.guest == self
        end
    end

    def trip_count
        trips.count
    end

    def listings
        trips.map do |trip|
            trip.listing
        end
    end

    def self.find_all_by_name(name)
        Guest.all.select do |guest|
            guest.name == name
        end
    end

    def self.pro_traveler
        Guest.all.select do |guest|
            guest.trips.count > 1
        end
    end
end
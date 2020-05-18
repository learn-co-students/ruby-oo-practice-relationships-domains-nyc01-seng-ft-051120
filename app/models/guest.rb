class Guest

    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    # .find_all_by_name(name)
    # takes an argument of a name (as a string), returns the all guests with that name

    # .pro_traveller
    # returns an array of all guests who have made over 1 trip

    # #listings
    # returns an array of all listings a guest has stayed at

    # #trips
    # returns an array of all trips a guest has made

    # #trip_count
    # returns the number of trips a guest has taken




end
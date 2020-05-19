require 'pry'
require_relative './guest.rb'
require_relative './listing.rb'

class Trip

   attr_reader :listing, :guest

   @@all = []

   def initialize(listing, guest, date)
      @listing = listing
      @guest = guest
      @date = date
      # guest.trip_count += 1
      # listing.trip_count += 1
      @@all << self
   end

   def self.all
      @@all
   end


   #Private

   # def add_to_trip_count
   #    @listing.trip_count += 1
   #    @guest.trip_count += 1
   # end

end

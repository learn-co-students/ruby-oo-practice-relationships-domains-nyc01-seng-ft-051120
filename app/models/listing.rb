require 'pry'
require_relative './guest.rb'
require_relative './trip.rb'


class Listing

   attr_reader :type, :city, :trip_count
   
   @@all = []

   def initialize(type, city)
      @city = city
      @type = type
      @trip_count = 0
      @@all << self
   end

   def trips
      Trip.all.select { |trip| trip.listing == self }
   end

   def dates_booked
      self.trips.map { |trip| trip.date }.sort
   end


   def guests
      self.trips.map { |trip| trip.guest }
   end

   def self.all
      @@all
   end

   def self.find_all_by_city(city)
      @@all.select { |listing| listing.city == city}
   end

   def self.most_popular
      @@all.sort { |a, b| a.trip_count <=> b.trip_count }.last       
   end

   def average_age
      ages = self.guests.map { |guest| guest.age }
      ages.sum/ages.count
   end

   def locations
      self.guests { |guest| guest.location }
   end


end
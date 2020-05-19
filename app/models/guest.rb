require 'pry'
require_relative './listing.rb'
require_relative './trip.rb'

class Guest

   attr_reader :name, :lcoation, :age, :trip_count

   @@all = []

   def initialize(name, location, age)
      @name = name
      @location = location
      @age = age
      @trip_count = 0
      @@all << self
   end

  
   def trips
      Trip.all.select { |trip| trip.guest == self }
   end

   def listings
      self.trips.map { |trip| trip.listing }
   end

   def trip_count
      @trip_count
   end

   def self.all
      @@all
   end

   def self.pro_traveller
      @@all.select { |guest| guest.trip_count > 1 }
   end

   def self.find_all_by_name(name)
      @@all.select { |guest| guest.name == name }
   end




end


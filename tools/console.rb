require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

require 'pry'
require_relative '../app/models/guest.rb'
require_relative '../app/models/listing.rb'
require_relative '../app/models/trip.rb'


listing1 = Listing.new("Apartment", "Barcelona")
listing2 = Listing.new("House", "Tokyo")
listing3 = Listing.new("Hut", "Bangkok")
listing4 = Listing.new("Loft", "Casablanca")

guest1 = Guest.new("Chase", "Los Angeles", 36)
guest2 = Guest.new("Jallen", "SLC", 28)
guest3 = Guest.new("Monica", "NYC", 20)
guest4 = Guest.new("Charles", "D.C.", 42)
guest5 = Guest.new("Jessica", "Jerusalem", 67)
guest6 = Guest.new("Steve", "Ottowa", 38)

trip1 = Trip.new(listing1, guest1, "02/5/2021")
trip2 = Trip.new(listing2, guest1, "10/16/2020")
trip3 = Trip.new(listing3, guest1, "11/1/2020")
trip4 = Trip.new(listing4, guest1, "06/27/2020")
trip5 = Trip.new(listing1, guest2, "12/20/2020")
trip6 = Trip.new(listing2, guest2, "09/08/2020")

# puts Listing.all
# puts Trip.all
# puts Guest.all
binding.pry


Pry.start


# 
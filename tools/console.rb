require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


#instances/method tests for Lyft:
driver1 = Driver.new("Harry")
driver2 = Driver.new("Sam")

passenger1 = Passenger.new("Meg")
passenger2 = Passenger.new("Sara")

ride1 = Ride.new(passenger1, driver1, 500)
ride2 = Ride.new(passenger2, driver1, 600)
ride3 = Ride.new(passenger1, driver2, 800)
ride4 = Ride.new(passenger2, driver2, 100)

#instances/method tests for Airbnb:

guest1 = Guest.new("Frankie")
guest2 = Guest.new("Chloe")
guest3 = Guest.new("Kori")

listing1 = Listing.new("Seattle")
listing2 = Listing.new("Seattle")
listing3 = Listing.new("Los Angeles")
listing4 = Listing.new("San Fran")

trip1 = Trip.new(listing2, guest3)
trip2 = Trip.new(listing4, guest3)
trip3 = Trip.new(listing4, guest2)


binding.pry
0 #so not last line
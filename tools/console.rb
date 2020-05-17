require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end



driver1 = Driver.new("Harry")
driver2 = Driver.new("Sam")

passenger1 = Passenger.new("Meg")
passenger2 = Passenger.new("Sara")

ride1 = Ride.new(passenger1, driver1, 500)
ride2 = Ride.new(passenger2, driver1, 600)
ride3 = Ride.new(passenger1, driver2, 800)
ride4 = Ride.new(passenger2, driver2, 100)

binding.pry
0 #so not last line
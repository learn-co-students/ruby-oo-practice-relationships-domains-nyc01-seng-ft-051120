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

#instances/method tests for Bakery:

bakery1 = Bakery.new("Holesome Treats")
bakery2 = Bakery.new("Floury")
bakery3 = Bakery.new("Yummies")

cookie = Dessert.new("cookie", bakery1)
cake = Dessert.new("cake", bakery2)
pie = Dessert.new("pie", bakery3)
macaron = Dessert.new("macaron", bakery1)
bread = Dessert.new("bread", bakery2)


ingredient1 = Ingredient.new("chocolate chips", cookie, 250)
ingredient2 = Ingredient.new("baking powder", cookie, 10)
ingredient3 = Ingredient.new("chocolate", cake, 200)
ingredient4 = Ingredient.new("flour", cake, 39)
ingredient5 = Ingredient.new("apples", pie, 89)
ingredient6 = Ingredient.new("almonds", macaron, 57)
ingredient7 = Ingredient.new("seeds", bread, 350)

#instances/method tests for Bakery:

actor1 = Actor.new("Emma Watson")
actor2 = Actor.new("Zendaya")
actor3 = Actor.new("Harry")

princess = Character.new(actor1, "princess")
sister = Character.new(actor1, "sister")
trapeze = Character.new(actor2, "trapeze")
clown = Character.new(actor3, "clown")

happyshow  = Show.new("Happy")
friends = Show.new("Friends")


happymovie  = Movie.new("Happy")
happymovie2  = Movie.new("Happy")
great = Movie.new("Great")

happyclown = MovieRole.new(clown, happymovie)
happysister = MovieRole.new(sister, happymovie)
happyprincess = MovieRole.new(princess, happymovie2)

trapezehappy = ShowRole.new(trapeze, happymovie)
lala = ShowRole.new(princess, friends)



binding.pry
0 #so not last line
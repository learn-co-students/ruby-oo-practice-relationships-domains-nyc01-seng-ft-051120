require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

##########################################################
anna = Guest.new("anna")
anny = Guest.new("anny")
anna2 = Guest.new("anna")
gary = Guest.new("gary")

seattle = Listing.new("seattle")
nyc = Listing.new("new york city")
iowa = Listing.new("iowa")

Trip.new(anna,seattle)
Trip.new(anna,nyc)
Trip.new(anny,seattle)
Trip.new(anny,nyc)
Trip.new(anny,iowa)
Trip.new(anna2,nyc)
Trip.new(anna2,iowa)
Trip.new(gary,nyc)
#################################################
ann_bakery = Bakery.new("Ann Bakery")
levain_bakery = Bakery.new("Levain Bakery")

walnut_chocolate_chip_cookie = Dessert.new("Walnut Chocolate Chip Cookie",levain_bakery)
banana_chocolate_bread = Dessert.new("Banana Chocolate Bread",levain_bakery)
carrot_cake = Dessert.new("Carrot Cake",ann_bakery)

flour = Ingredient.new("flour",100,carrot_cake)
eggs = Ingredient.new("eggs",70,carrot_cake)
carrot = Ingredient.new("carrot",50,carrot_cake)
all_purpose_flour = Ingredient.new("all purpose flour",120,walnut_chocolate_chip_cookie)
butter = Ingredient.new("butter",180,walnut_chocolate_chip_cookie)
powder_sugar = Ingredient.new("powder sugar",150,walnut_chocolate_chip_cookie)
walnut = Ingredient.new("walnut",90,walnut_chocolate_chip_cookie)
chocolate_chip = Ingredient.new("Chocolate chip",110,walnut_chocolate_chip_cookie)
cake_flour = Ingredient.new("cake flour",100,banana_chocolate_bread)
banana = Ingredient.new("Banana",50,banana_chocolate_bread)
chocolate = Ingredient.new("chocolate",100,banana_chocolate_bread)
######################################################################################

passenger1 = Passenger.new("Anna")
passenger2 = Passenger.new("Joseph")
passenger3 = Passenger.new("Gary")

driver1 = Driver.new("Alberto")
driver2 = Driver.new("Jesus")
driver3 = Driver.new("Mike")

Ride.new(passenger1,driver1, 10.3)
Ride.new(passenger1,driver1, 17.7)
Ride.new(passenger1,driver2, 25.3)
Ride.new(passenger1,driver3, 50.0)
Ride.new(passenger2,driver1, 7.5)
Ride.new(passenger2,driver2, 35.2)
Ride.new(passenger3,driver2, 5)
Ride.new(passenger3,driver3, 3)
Ride.new(passenger3,driver2, 45.7)
###########################################################################
actor1 = Actor.new("Gary")
actor2 = Actor.new("Juan")
actor3 = Actor.new("Jose")
actor4 = Actor.new("Maria")
actor5 = Actor.new("Ned")
actor6 = Actor.new("julia")

character1 = Character.new("Peter Parker",actor1)
character2 = Character.new("Piglet",actor1)
character3 = Character.new("Dr. Octopus",actor2)
character4 = Character.new("Barry Allen",actor3)
character5 = Character.new("Nerder",actor5)
character6 = Character.new("Mary Jane",actor4)
character7 = Character.new("Juliet",actor6)

movie1 = Movie.new("Spider Man")
movie5 = Movie.new("Spider Man, away from home")
movie2 = Movie.new("The Flash")
movie3 = Movie.new("Nerder and the piglet")
movie4 = Movie.new("Romeo and Juliet")

Production.new(movie1,character1)
Production.new(movie1,character3)
Production.new(movie1,character6)
Production.new(movie2,character4)
Production.new(movie3,character2)
Production.new(movie3,character5)
Production.new(movie4,character7)
Production.new(movie5,character1)

show1 = Show.new("Spider Man")
show2 = Show.new("The Flash")

Episode.new(1,character1,show1)
Episode.new(1,character4,show2)
Episode.new(1,character6,show1)
Episode.new(2,character3,show1)
##################################################################

client  = Client.new("Anna")
client1 = Client.new("Pedro")
client2 = Client.new("Gary")
client3 = Client.new("Joel")

trainer = Trainer.new("Julio")
trainer = Trainer.new("Matt")
trainer = Trainer.new("Marco")




Pry.start

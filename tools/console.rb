require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

guest1 = Guest.new("Guest One")
guest2 = Guest.new("Guest Two")
guest3 = Guest.new("Guest Three")
guest4 = Guest.new("Guest Four")
guest5 = Guest.new("Guest Five")

list1 = Listing.new("City1")
list2 = Listing.new("City2")
list3 = Listing.new("City2")
list4 = Listing.new("City2")
list5 = Listing.new("City2")

trip1 = Trip.new(list1, guest1)
trip2 = Trip.new(list1, guest2)
trip3 = Trip.new(list3, guest2)
trip4 = Trip.new(list1, guest3)
trip5 = Trip.new(list1, guest5)

bakery1 = Bakery.new("Bakery1")
bakery2 = Bakery.new("Bakery2")
bakery3 = Bakery.new("Bakery3")
bakery4 = Bakery.new("Bakery4")
bakery5 = Bakery.new("Bakery5")

dessert11 = Dessert.new("Dessert11", bakery1)
dessert12 = Dessert.new("Dessert12", bakery1)
dessert13 = Dessert.new("Dessert13", bakery1)
dessert21 = Dessert.new("Dessert21", bakery2)
dessert22 = Dessert.new("Dessert22", bakery2)
dessert23 = Dessert.new("Dessert23", bakery2)
dessert31 = Dessert.new("Dessert31", bakery3)
dessert41 = Dessert.new("Dessert41", bakery4)
dessert51 = Dessert.new("Dessert51", bakery5)

ingredient111 = Ingredient.new("chocolate sprinkles", 100, dessert11)
ingredient112 = Ingredient.new("buttercream frosting", 200, dessert11)
ingredient121 = Ingredient.new("chocolate frosting", 200, dessert12)
ingredient122 = Ingredient.new("rainbow sprinkles", 100, dessert12)
ingredient131 = Ingredient.new("vanilla frosting", 200, dessert13)
ingredient132 = Ingredient.new("vanilla beans", 150, dessert13)
ingredient311 = Ingredient.new("lemon frosting", 200, dessert31)
ingredient312 = Ingredient.new("lemon cake", 150, dessert31)
ingredient411 = Ingredient.new("cream cheese frosting", 200, dessert41)
ingredient511 = Ingredient.new("carrot", 10, dessert51)

binding.pry

puts "done"

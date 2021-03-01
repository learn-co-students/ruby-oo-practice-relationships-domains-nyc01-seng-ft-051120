require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
#airbnb domain
guest1 = Guest.new("Guest1")
listing1 = Listing.new("lisiting1", "city1")
trip1 = Trip.new(listing: listing1, guet: guest1, checkin_date: "July 5th, 2020", check_out_date: "July 15th, 2020")

#bakery domain
bakery1 = Bakery.new("Bakery1")
bakery2 = Bakery.new("Bakery2")
bakery3 = Bakery.new("Bakery3")

dessert1 = Dessert.new("Dessert1", bakery1)
dessert2 = Dessert.new("Dessert2", bakery1)
dessert3 = Dessert.new("Dessert3", bakery3)

ingredient1 = Ingredient.new("ingredient1", 1000, dessert1)
ingredient2 = Ingredient.new("ingredient2", 500, dessert1)
ingredient3 = Ingredient.new("ingredient4", 1400, dessert2)
ingredient4 = Ingredient.new("ingredient4 plus", 1500, dessert3)

#crowdfunding domain
user1 = User.new("User1")
user2 = User.new("User2")
user3 = User.new("User3")
user4 = User.new("User4")

project1 = Project.new("Project1", 25000, user1)
project2 = Project.new("Project2", 25000, user2)
project3 = Project.new("Project3", 25000, user3)

pledge1 = Pledge.new(project1, user3, 1000)
pledge1 = Pledge.new(project1, user3, 2000)
pledge2 = Pledge.new(project3, user2, 2000)
pledge3 = Pledge.new(project2, user1, 3000)
pledge4 = Pledge.new(project1, user4, 5000)
pledge4 = Pledge.new(project1, user4, 7000)
pledge4 = Pledge.new(project1, user4, 3000)

#gym domain
location1 = Location.new("Location1")
location2 = Location.new("Location2")
location3 = Location.new("Location3")

trainer1 = Trainer.new("Trainer1")
trainer2 = Trainer.new("Trainer2")
trainer3 = Trainer.new("Trainer3")

client1 = Client.new("Client1", trainer1)
client2 = Client.new("Client2", trainer2)
client3 = Client.new("Client3", trainer2)
client4 = Client.new("Client4", trainer2)
client5 = Client.new("Client5", trainer3)

trainerlocation1 = TrainerLocation.new(trainer1, location1)
trainerlocation2 = TrainerLocation.new(trainer2, location2)
trainerlocation3 = TrainerLocation.new(trainer2, location3)
trainerlocation3 = TrainerLocation.new(trainer3, location3)

#imdb
actor1 = Actor.new("Actor1")
actor2 = Actor.new("Actor2")
actor3 = Actor.new("Actor3")

movie1 = Movie.new("Show1")
movie2 = Movie.new("Movie2")
movie3 = Movie.new("Movie3")

show1 = Show.new("Show1")
show2 = Show.new("Show2")
show3 = Show.new("Show3")

character1 = Character.new(name: "Character1", actor: actor1)
character2 = Character.new(name: "Character2", actor: actor2)
character3 = Character.new(name: "Character3", actor: actor2)

episode1 = Episode.new("Episode1", show1)
episode2 = Episode.new("Episode2", show1)
episode3 = Episode.new("Episode1", show2)

charactermovies1 = CharacterMovies.new(character1, movie1)
charactermovies2 = CharacterMovies.new(character2, movie1)

charactershows1 = CharacterShows.new(character2, show1)

#lyft domain
driver1 = Driver.new("Driver1")
driver2 = Driver.new("Driver2")
driver3 = Driver.new("Driver3")

passenger1 = Passenger.new("Passenger1")
passenger2 = Passenger.new("Passenger2")
passenger3 = Passenger.new("Passenger3")

ride1 = Ride.new(passenger: passenger1, driver: driver1, distance: 105.5)
ride2 = Ride.new(passenger: passenger1, driver: driver2, distance: 17.5)
ride3 = Ride.new(passenger: passenger3, driver: driver1, distance: 10.5)




Pry.start

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

binding.pry

puts "done"
